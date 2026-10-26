import '../schema.graphql.dart';

import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SupplierPageRead {
  factory Variables$Query$SupplierPageRead({
    required int first,
    int? offset,
    Input$MstrStakeholderFilter? filter,
    List<Enum$MstrStakeholdersOrderBy>? orderBy,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$SupplierPageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (filter != null) r'filter': filter,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$SupplierPageRead._(this._$data);

  factory Variables$Query$SupplierPageRead.fromJson(Map<String, dynamic> data) {
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
          : Input$MstrStakeholderFilter.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrStakeholdersOrderBy((e as String)))
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$SupplierPageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrStakeholderFilter? get filter =>
      (_$data['filter'] as Input$MstrStakeholderFilter?);

  List<Enum$MstrStakeholdersOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrStakeholdersOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrStakeholdersOrderBy(e))
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

  CopyWith$Variables$Query$SupplierPageRead<Variables$Query$SupplierPageRead>
  get copyWith => CopyWith$Variables$Query$SupplierPageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SupplierPageRead ||
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

abstract class CopyWith$Variables$Query$SupplierPageRead<TRes> {
  factory CopyWith$Variables$Query$SupplierPageRead(
    Variables$Query$SupplierPageRead instance,
    TRes Function(Variables$Query$SupplierPageRead) then,
  ) = _CopyWithImpl$Variables$Query$SupplierPageRead;

  factory CopyWith$Variables$Query$SupplierPageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SupplierPageRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrStakeholderFilter? filter,
    List<Enum$MstrStakeholdersOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$SupplierPageRead<TRes>
    implements CopyWith$Variables$Query$SupplierPageRead<TRes> {
  _CopyWithImpl$Variables$Query$SupplierPageRead(this._instance, this._then);

  final Variables$Query$SupplierPageRead _instance;

  final TRes Function(Variables$Query$SupplierPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$SupplierPageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (filter != _undefined)
        'filter': (filter as Input$MstrStakeholderFilter?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrStakeholdersOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SupplierPageRead<TRes>
    implements CopyWith$Variables$Query$SupplierPageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$SupplierPageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrStakeholderFilter? filter,
    List<Enum$MstrStakeholdersOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$SupplierPageRead {
  Query$SupplierPageRead({
    this.allMstrStakeholders,
    this.$__typename = 'Query',
  });

  factory Query$SupplierPageRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrStakeholders = json['allMstrStakeholders'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead(
      allMstrStakeholders: l$allMstrStakeholders == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders.fromJson(
              (l$allMstrStakeholders as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SupplierPageRead$allMstrStakeholders? allMstrStakeholders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrStakeholders = allMstrStakeholders;
    _resultData['allMstrStakeholders'] = l$allMstrStakeholders?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrStakeholders = allMstrStakeholders;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrStakeholders, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SupplierPageRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrStakeholders = allMstrStakeholders;
    final lOther$allMstrStakeholders = other.allMstrStakeholders;
    if (l$allMstrStakeholders != lOther$allMstrStakeholders) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SupplierPageRead on Query$SupplierPageRead {
  CopyWith$Query$SupplierPageRead<Query$SupplierPageRead> get copyWith =>
      CopyWith$Query$SupplierPageRead(this, (i) => i);
}

abstract class CopyWith$Query$SupplierPageRead<TRes> {
  factory CopyWith$Query$SupplierPageRead(
    Query$SupplierPageRead instance,
    TRes Function(Query$SupplierPageRead) then,
  ) = _CopyWithImpl$Query$SupplierPageRead;

  factory CopyWith$Query$SupplierPageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$SupplierPageRead;

  TRes call({
    Query$SupplierPageRead$allMstrStakeholders? allMstrStakeholders,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders<TRes>
  get allMstrStakeholders;
}

class _CopyWithImpl$Query$SupplierPageRead<TRes>
    implements CopyWith$Query$SupplierPageRead<TRes> {
  _CopyWithImpl$Query$SupplierPageRead(this._instance, this._then);

  final Query$SupplierPageRead _instance;

  final TRes Function(Query$SupplierPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrStakeholders = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead(
      allMstrStakeholders: allMstrStakeholders == _undefined
          ? _instance.allMstrStakeholders
          : (allMstrStakeholders
                as Query$SupplierPageRead$allMstrStakeholders?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders<TRes>
  get allMstrStakeholders {
    final local$allMstrStakeholders = _instance.allMstrStakeholders;
    return local$allMstrStakeholders == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders(
            local$allMstrStakeholders,
            (e) => call(allMstrStakeholders: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead<TRes>
    implements CopyWith$Query$SupplierPageRead<TRes> {
  _CopyWithStubImpl$Query$SupplierPageRead(this._res);

  TRes _res;

  call({
    Query$SupplierPageRead$allMstrStakeholders? allMstrStakeholders,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders<TRes>
  get allMstrStakeholders =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders.stub(_res);
}

const documentNodeQuerySupplierPageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SupplierPageRead'),
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
            name: NameNode(value: 'MstrStakeholderFilter'),
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
              name: NameNode(value: 'MstrStakeholdersOrderBy'),
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
            name: NameNode(value: 'allMstrStakeholders'),
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
                                name: NameNode(value: 'isSupplier'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: 'equalTo'),
                                      value: BooleanValueNode(value: true),
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
                        name: NameNode(value: 'mstrStakeholderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isCustomer'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isSupplier'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isLogistics'),
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                      value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                        name: NameNode(value: 'mail'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'infoAddressByInfoAddressId'),
                        alias: NameNode(value: 'address'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'infoAddressId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'iso31662'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'zipCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'sharedAppellationByAddress1',
                              ),
                              alias: NameNode(value: 'address1'),
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
                              name: NameNode(
                                value: 'sharedAppellationByAddress2',
                              ),
                              alias: NameNode(value: 'address2'),
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
                              name: NameNode(
                                value: 'sharedAppellationByBuilding',
                              ),
                              alias: NameNode(value: 'building'),
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
                              name: NameNode(value: 'phone'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'faxNumber'),
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
                        name: NameNode(value: 'mstrShippingKindId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'mstrShippingKindByMstrShippingKindId',
                        ),
                        alias: NameNode(value: 'shippingKinds'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrShippingKindId'),
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
                          value: 'vStakeholderOutsourceAvailableCountByMstrStakeholderId',
                        ),
                        alias: NameNode(value: 'outsource_available_count'),
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
                          value: 'vStakeholderStakeholderProvisionCountByMstrStakeholderId',
                        ),
                        alias: NameNode(value: 'stakeholder_provision_count'),
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
                          value: 'vStakeholderStakeholderContactCountByMstrStakeholderId',
                        ),
                        alias: NameNode(value: 'stakeholder_contact_count'),
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
Query$SupplierPageRead _parserFn$Query$SupplierPageRead(
  Map<String, dynamic> data,
) => Query$SupplierPageRead.fromJson(data);
typedef OnQueryComplete$Query$SupplierPageRead = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SupplierPageRead?,
);

class Options$Query$SupplierPageRead
    extends graphql.QueryOptions<Query$SupplierPageRead> {
  Options$Query$SupplierPageRead({
    String? operationName,
    required Variables$Query$SupplierPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierPageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SupplierPageRead? onComplete,
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
                 data == null ? null : _parserFn$Query$SupplierPageRead(data),
               ),
         onError: onError,
         document: documentNodeQuerySupplierPageRead,
         parserFn: _parserFn$Query$SupplierPageRead,
       );

  final OnQueryComplete$Query$SupplierPageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$SupplierPageRead
    extends graphql.WatchQueryOptions<Query$SupplierPageRead> {
  WatchOptions$Query$SupplierPageRead({
    String? operationName,
    required Variables$Query$SupplierPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierPageRead? typedOptimisticResult,
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
         document: documentNodeQuerySupplierPageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$SupplierPageRead,
       );
}

class FetchMoreOptions$Query$SupplierPageRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SupplierPageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SupplierPageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerySupplierPageRead,
       );
}

extension ClientExtension$Query$SupplierPageRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SupplierPageRead>> query$SupplierPageRead(
    Options$Query$SupplierPageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$SupplierPageRead> watchQuery$SupplierPageRead(
    WatchOptions$Query$SupplierPageRead options,
  ) => this.watchQuery(options);

  void writeQuery$SupplierPageRead({
    required Query$SupplierPageRead data,
    required Variables$Query$SupplierPageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQuerySupplierPageRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$SupplierPageRead? readQuery$SupplierPageRead({
    required Variables$Query$SupplierPageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerySupplierPageRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SupplierPageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SupplierPageRead>
useQuery$SupplierPageRead(Options$Query$SupplierPageRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SupplierPageRead> useWatchQuery$SupplierPageRead(
  WatchOptions$Query$SupplierPageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$SupplierPageRead$Widget
    extends graphql_flutter.Query<Query$SupplierPageRead> {
  Query$SupplierPageRead$Widget({
    widgets.Key? key,
    required Options$Query$SupplierPageRead options,
    required graphql_flutter.QueryBuilder<Query$SupplierPageRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$SupplierPageRead$allMstrStakeholders {
  Query$SupplierPageRead$allMstrStakeholders({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrStakeholdersConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SupplierPageRead$allMstrStakeholders$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SupplierPageRead$allMstrStakeholders$pageInfo pageInfo;

  final List<Query$SupplierPageRead$allMstrStakeholders$nodes?> nodes;

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
    if (other is! Query$SupplierPageRead$allMstrStakeholders ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders
    on Query$SupplierPageRead$allMstrStakeholders {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders<
    Query$SupplierPageRead$allMstrStakeholders
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders(this, (i) => i);
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders<TRes> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders(
    Query$SupplierPageRead$allMstrStakeholders instance,
    TRes Function(Query$SupplierPageRead$allMstrStakeholders) then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders.stub(TRes res) =
      _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders;

  TRes call({
    int? totalCount,
    Query$SupplierPageRead$allMstrStakeholders$pageInfo? pageInfo,
    List<Query$SupplierPageRead$allMstrStakeholders$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$SupplierPageRead$allMstrStakeholders$nodes?> Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders<TRes>
    implements CopyWith$Query$SupplierPageRead$allMstrStakeholders<TRes> {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders _instance;

  final TRes Function(Query$SupplierPageRead$allMstrStakeholders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SupplierPageRead$allMstrStakeholders$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$SupplierPageRead$allMstrStakeholders$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SupplierPageRead$allMstrStakeholders$nodes?> Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders<TRes>
    implements CopyWith$Query$SupplierPageRead$allMstrStakeholders<TRes> {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SupplierPageRead$allMstrStakeholders$pageInfo? pageInfo,
    List<Query$SupplierPageRead$allMstrStakeholders$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$pageInfo {
  Query$SupplierPageRead$allMstrStakeholders$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$pageInfo(
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
    if (other is! Query$SupplierPageRead$allMstrStakeholders$pageInfo ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$pageInfo
    on Query$SupplierPageRead$allMstrStakeholders$pageInfo {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo<
    Query$SupplierPageRead$allMstrStakeholders$pageInfo
  >
  get copyWith => CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo(
    Query$SupplierPageRead$allMstrStakeholders$pageInfo instance,
    TRes Function(Query$SupplierPageRead$allMstrStakeholders$pageInfo) then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$pageInfo;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$pageInfo<TRes>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo<TRes> {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$pageInfo _instance;

  final TRes Function(Query$SupplierPageRead$allMstrStakeholders$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$pageInfo(
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

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes({
    required this.mstrStakeholderId,
    this.isCustomer,
    this.isSupplier,
    this.isLogistics,
    required this.code,
    this.controlCode,
    this.labels,
    this.mail,
    this.address,
    this.mstrShippingKindId,
    this.shippingKinds,
    this.symbol,
    this.remarks,
    this.outsource_available_count,
    this.stakeholder_provision_count,
    this.stakeholder_contact_count,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrStakeholder',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$isCustomer = json['isCustomer'];
    final l$isSupplier = json['isSupplier'];
    final l$isLogistics = json['isLogistics'];
    final l$code = json['code'];
    final l$controlCode = json['controlCode'];
    final l$labels = json['labels'];
    final l$mail = json['mail'];
    final l$address = json['address'];
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$shippingKinds = json['shippingKinds'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$outsource_available_count = json['outsource_available_count'];
    final l$stakeholder_provision_count = json['stakeholder_provision_count'];
    final l$stakeholder_contact_count = json['stakeholder_contact_count'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes(
      mstrStakeholderId: (l$mstrStakeholderId as String),
      isCustomer: (l$isCustomer as bool?),
      isSupplier: (l$isSupplier as bool?),
      isLogistics: (l$isLogistics as bool?),
      code: (l$code as String),
      controlCode: (l$controlCode as String?),
      labels: l$labels == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      mail: (l$mail as String?),
      address: l$address == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address.fromJson(
              (l$address as Map<String, dynamic>),
            ),
      mstrShippingKindId: (l$mstrShippingKindId as String?),
      shippingKinds: l$shippingKinds == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds.fromJson(
              (l$shippingKinds as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      outsource_available_count: l$outsource_available_count == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count.fromJson(
              (l$outsource_available_count as Map<String, dynamic>),
            ),
      stakeholder_provision_count: l$stakeholder_provision_count == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count.fromJson(
              (l$stakeholder_provision_count as Map<String, dynamic>),
            ),
      stakeholder_contact_count: l$stakeholder_contact_count == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count.fromJson(
              (l$stakeholder_contact_count as Map<String, dynamic>),
            ),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderId;

  final bool? isCustomer;

  final bool? isSupplier;

  final bool? isLogistics;

  final String code;

  final String? controlCode;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels? labels;

  final String? mail;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address? address;

  final String? mstrShippingKindId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds?
  shippingKinds;

  final String? symbol;

  final String? remarks;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count?
  outsource_available_count;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count?
  stakeholder_provision_count;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count?
  stakeholder_contact_count;

  final String? updateAt;

  final bool? remove;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$isCustomer = isCustomer;
    _resultData['isCustomer'] = l$isCustomer;
    final l$isSupplier = isSupplier;
    _resultData['isSupplier'] = l$isSupplier;
    final l$isLogistics = isLogistics;
    _resultData['isLogistics'] = l$isLogistics;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$mail = mail;
    _resultData['mail'] = l$mail;
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
    final l$shippingKinds = shippingKinds;
    _resultData['shippingKinds'] = l$shippingKinds?.toJson();
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$outsource_available_count = outsource_available_count;
    _resultData['outsource_available_count'] = l$outsource_available_count
        ?.toJson();
    final l$stakeholder_provision_count = stakeholder_provision_count;
    _resultData['stakeholder_provision_count'] = l$stakeholder_provision_count
        ?.toJson();
    final l$stakeholder_contact_count = stakeholder_contact_count;
    _resultData['stakeholder_contact_count'] = l$stakeholder_contact_count
        ?.toJson();
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
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$isCustomer = isCustomer;
    final l$isSupplier = isSupplier;
    final l$isLogistics = isLogistics;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$labels = labels;
    final l$mail = mail;
    final l$address = address;
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$shippingKinds = shippingKinds;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$outsource_available_count = outsource_available_count;
    final l$stakeholder_provision_count = stakeholder_provision_count;
    final l$stakeholder_contact_count = stakeholder_contact_count;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderId,
      l$isCustomer,
      l$isSupplier,
      l$isLogistics,
      l$code,
      l$controlCode,
      l$labels,
      l$mail,
      l$address,
      l$mstrShippingKindId,
      l$shippingKinds,
      l$symbol,
      l$remarks,
      l$outsource_available_count,
      l$stakeholder_provision_count,
      l$stakeholder_contact_count,
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
    if (other is! Query$SupplierPageRead$allMstrStakeholders$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$isCustomer = isCustomer;
    final lOther$isCustomer = other.isCustomer;
    if (l$isCustomer != lOther$isCustomer) {
      return false;
    }
    final l$isSupplier = isSupplier;
    final lOther$isSupplier = other.isSupplier;
    if (l$isSupplier != lOther$isSupplier) {
      return false;
    }
    final l$isLogistics = isLogistics;
    final lOther$isLogistics = other.isLogistics;
    if (l$isLogistics != lOther$isLogistics) {
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
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$mail = mail;
    final lOther$mail = other.mail;
    if (l$mail != lOther$mail) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
      return false;
    }
    final l$shippingKinds = shippingKinds;
    final lOther$shippingKinds = other.shippingKinds;
    if (l$shippingKinds != lOther$shippingKinds) {
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
    final l$outsource_available_count = outsource_available_count;
    final lOther$outsource_available_count = other.outsource_available_count;
    if (l$outsource_available_count != lOther$outsource_available_count) {
      return false;
    }
    final l$stakeholder_provision_count = stakeholder_provision_count;
    final lOther$stakeholder_provision_count =
        other.stakeholder_provision_count;
    if (l$stakeholder_provision_count != lOther$stakeholder_provision_count) {
      return false;
    }
    final l$stakeholder_contact_count = stakeholder_contact_count;
    final lOther$stakeholder_contact_count = other.stakeholder_contact_count;
    if (l$stakeholder_contact_count != lOther$stakeholder_contact_count) {
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes
    on Query$SupplierPageRead$allMstrStakeholders$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes<TRes> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes instance,
    TRes Function(Query$SupplierPageRead$allMstrStakeholders$nodes) then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes;

  TRes call({
    String? mstrStakeholderId,
    bool? isCustomer,
    bool? isSupplier,
    bool? isLogistics,
    String? code,
    String? controlCode,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels? labels,
    String? mail,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address? address,
    String? mstrShippingKindId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds?
    shippingKinds,
    String? symbol,
    String? remarks,
    Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count?
    outsource_available_count,
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count?
    stakeholder_provision_count,
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count?
    stakeholder_contact_count,
    String? updateAt,
    bool? remove,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user? update_user,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels<TRes>
  get labels;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address<TRes>
  get address;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds<TRes>
  get shippingKinds;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count<
    TRes
  >
  get outsource_available_count;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count<
    TRes
  >
  get stakeholder_provision_count;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count<
    TRes
  >
  get stakeholder_contact_count;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user<TRes>
  get update_user;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes<TRes>
    implements CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes<TRes> {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes _instance;

  final TRes Function(Query$SupplierPageRead$allMstrStakeholders$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? isCustomer = _undefined,
    Object? isSupplier = _undefined,
    Object? isLogistics = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? labels = _undefined,
    Object? mail = _undefined,
    Object? address = _undefined,
    Object? mstrShippingKindId = _undefined,
    Object? shippingKinds = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? outsource_available_count = _undefined,
    Object? stakeholder_provision_count = _undefined,
    Object? stakeholder_contact_count = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes(
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      isCustomer: isCustomer == _undefined
          ? _instance.isCustomer
          : (isCustomer as bool?),
      isSupplier: isSupplier == _undefined
          ? _instance.isSupplier
          : (isSupplier as bool?),
      isLogistics: isLogistics == _undefined
          ? _instance.isLogistics
          : (isLogistics as bool?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$SupplierPageRead$allMstrStakeholders$nodes$labels?),
      mail: mail == _undefined ? _instance.mail : (mail as String?),
      address: address == _undefined
          ? _instance.address
          : (address
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address?),
      mstrShippingKindId: mstrShippingKindId == _undefined
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String?),
      shippingKinds: shippingKinds == _undefined
          ? _instance.shippingKinds
          : (shippingKinds
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      outsource_available_count: outsource_available_count == _undefined
          ? _instance.outsource_available_count
          : (outsource_available_count
                as Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count?),
      stakeholder_provision_count: stakeholder_provision_count == _undefined
          ? _instance.stakeholder_provision_count
          : (stakeholder_provision_count
                as Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count?),
      stakeholder_contact_count: stakeholder_contact_count == _undefined
          ? _instance.stakeholder_contact_count
          : (stakeholder_contact_count
                as Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$SupplierPageRead$allMstrStakeholders$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address<TRes>
  get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address(
            local$address,
            (e) => call(address: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds<TRes>
  get shippingKinds {
    final local$shippingKinds = _instance.shippingKinds;
    return local$shippingKinds == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds(
            local$shippingKinds,
            (e) => call(shippingKinds: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count<
    TRes
  >
  get outsource_available_count {
    final local$outsource_available_count = _instance.outsource_available_count;
    return local$outsource_available_count == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count(
            local$outsource_available_count,
            (e) => call(outsource_available_count: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count<
    TRes
  >
  get stakeholder_provision_count {
    final local$stakeholder_provision_count =
        _instance.stakeholder_provision_count;
    return local$stakeholder_provision_count == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count(
            local$stakeholder_provision_count,
            (e) => call(stakeholder_provision_count: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count<
    TRes
  >
  get stakeholder_contact_count {
    final local$stakeholder_contact_count = _instance.stakeholder_contact_count;
    return local$stakeholder_contact_count == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count(
            local$stakeholder_contact_count,
            (e) => call(stakeholder_contact_count: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user<TRes>
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes<TRes>
    implements CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes<TRes> {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes(this._res);

  TRes _res;

  call({
    String? mstrStakeholderId,
    bool? isCustomer,
    bool? isSupplier,
    bool? isLogistics,
    String? code,
    String? controlCode,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels? labels,
    String? mail,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address? address,
    String? mstrShippingKindId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds?
    shippingKinds,
    String? symbol,
    String? remarks,
    Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count?
    outsource_available_count,
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count?
    stakeholder_provision_count,
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count?
    stakeholder_contact_count,
    String? updateAt,
    bool? remove,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user? update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels<TRes>
  get labels =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address<TRes>
  get address =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds<TRes>
  get shippingKinds =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count<
    TRes
  >
  get outsource_available_count =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count<
    TRes
  >
  get stakeholder_provision_count =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count<
    TRes
  >
  get stakeholder_contact_count =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user<TRes>
  get update_user =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels.fromJson(
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
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels
    on Query$SupplierPageRead$allMstrStakeholders$nodes$labels {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels instance,
    TRes Function(Query$SupplierPageRead$allMstrStakeholders$nodes$labels) then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels<TRes> {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels _instance;

  final TRes Function(Query$SupplierPageRead$allMstrStakeholders$nodes$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels<TRes> {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address({
    required this.infoAddressId,
    this.iso31662,
    this.zipCode,
    this.address1,
    this.address2,
    this.building,
    this.phone,
    this.faxNumber,
    this.$__typename = 'InfoAddress',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$iso31662 = json['iso31662'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$building = json['building'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address(
      infoAddressId: (l$infoAddressId as String),
      iso31662: (l$iso31662 as String?),
      zipCode: (l$zipCode as String?),
      address1: l$address1 == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1.fromJson(
              (l$address1 as Map<String, dynamic>),
            ),
      address2: l$address2 == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2.fromJson(
              (l$address2 as Map<String, dynamic>),
            ),
      building: l$building == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$building.fromJson(
              (l$building as Map<String, dynamic>),
            ),
      phone: (l$phone as String?),
      faxNumber: (l$faxNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? iso31662;

  final String? zipCode;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1?
  address1;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2?
  address2;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building?
  building;

  final String? phone;

  final String? faxNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAddressId = infoAddressId;
    _resultData['infoAddressId'] = l$infoAddressId;
    final l$iso31662 = iso31662;
    _resultData['iso31662'] = l$iso31662;
    final l$zipCode = zipCode;
    _resultData['zipCode'] = l$zipCode;
    final l$address1 = address1;
    _resultData['address1'] = l$address1?.toJson();
    final l$address2 = address2;
    _resultData['address2'] = l$address2?.toJson();
    final l$building = building;
    _resultData['building'] = l$building?.toJson();
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$faxNumber = faxNumber;
    _resultData['faxNumber'] = l$faxNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAddressId = infoAddressId;
    final l$iso31662 = iso31662;
    final l$zipCode = zipCode;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$building = building;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$iso31662,
      l$zipCode,
      l$address1,
      l$address2,
      l$building,
      l$phone,
      l$faxNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SupplierPageRead$allMstrStakeholders$nodes$address ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
      return false;
    }
    final l$iso31662 = iso31662;
    final lOther$iso31662 = other.iso31662;
    if (l$iso31662 != lOther$iso31662) {
      return false;
    }
    final l$zipCode = zipCode;
    final lOther$zipCode = other.zipCode;
    if (l$zipCode != lOther$zipCode) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$building = building;
    final lOther$building = other.building;
    if (l$building != lOther$building) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$faxNumber = faxNumber;
    final lOther$faxNumber = other.faxNumber;
    if (l$faxNumber != lOther$faxNumber) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address
    on Query$SupplierPageRead$allMstrStakeholders$nodes$address {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address instance,
    TRes Function(Query$SupplierPageRead$allMstrStakeholders$nodes$address)
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address;

  TRes call({
    String? infoAddressId,
    String? iso31662,
    String? zipCode,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1? address1,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2? address2,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building? building,
    String? phone,
    String? faxNumber,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1<
    TRes
  >
  get address1;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2<
    TRes
  >
  get address2;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building<
    TRes
  >
  get building;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address _instance;

  final TRes Function(Query$SupplierPageRead$allMstrStakeholders$nodes$address)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? iso31662 = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? building = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address(
      infoAddressId: infoAddressId == _undefined || infoAddressId == null
          ? _instance.infoAddressId
          : (infoAddressId as String),
      iso31662: iso31662 == _undefined
          ? _instance.iso31662
          : (iso31662 as String?),
      zipCode: zipCode == _undefined ? _instance.zipCode : (zipCode as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2?),
      building: building == _undefined
          ? _instance.building
          : (building
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$building?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      faxNumber: faxNumber == _undefined
          ? _instance.faxNumber
          : (faxNumber as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1<
    TRes
  >
  get address1 {
    final local$address1 = _instance.address1;
    return local$address1 == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1(
            local$address1,
            (e) => call(address1: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2<
    TRes
  >
  get address2 {
    final local$address2 = _instance.address2;
    return local$address2 == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2(
            local$address2,
            (e) => call(address2: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building<
    TRes
  >
  get building {
    final local$building = _instance.building;
    return local$building == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building(
            local$building,
            (e) => call(building: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? iso31662,
    String? zipCode,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1? address1,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2? address2,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building? building,
    String? phone,
    String? faxNumber,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1<
    TRes
  >
  get address1 =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2<
    TRes
  >
  get address2 =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building<
    TRes
  >
  get building =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1 {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1.fromJson(
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
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1 ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1
    on Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1 {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1 instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1,
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
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address1$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2 {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2.fromJson(
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
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2 ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2
    on Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2 {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2 instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2,
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
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$address2$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building.fromJson(
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
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building
    on Query$SupplierPageRead$allMstrStakeholders$nodes$address$building {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building,
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
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$address$building$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds({
    required this.mstrShippingKindId,
    required this.code,
    this.labels,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrShippingKind',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds(
      mstrShippingKindId: (l$mstrShippingKindId as String),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrShippingKindId;

  final String code;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels?
  labels;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
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
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$code = code;
    final l$labels = labels;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrShippingKindId,
      l$code,
      l$labels,
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds
    on Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds;

  TRes call({
    String? mstrShippingKindId,
    String? code,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels?
    labels,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels<
    TRes
  >
  get labels;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrShippingKindId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds(
      mstrShippingKindId:
          mstrShippingKindId == _undefined || mstrShippingKindId == null
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds(
    this._res,
  );

  TRes _res;

  call({
    String? mstrShippingKindId,
    String? code,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels?
    labels,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels.fromJson(
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
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels
    on Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels,
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
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user({
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

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user.fromJson(
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
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name.fromJson(
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

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user
    on Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user,
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
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user(
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
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name?),
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

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name.fromJson(
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
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name,
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
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$shippingKinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count {
  Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count({
    this.mstrStakeholderId,
    this.$__typename = 'VStakeholderOutsourceAvailableCount',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count(
      mstrStakeholderId: (l$mstrStakeholderId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrStakeholderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrStakeholderId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count
    on Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count<
    Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count(
    Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count;

  TRes call({String? mstrStakeholderId, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count(
      mstrStakeholderId: mstrStakeholderId == _undefined
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$outsource_available_count(
    this._res,
  );

  TRes _res;

  call({String? mstrStakeholderId, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count {
  Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count({
    this.mstrStakeholderId,
    this.$__typename = 'VStakeholderStakeholderProvisionCount',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count(
      mstrStakeholderId: (l$mstrStakeholderId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrStakeholderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrStakeholderId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count
    on Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count<
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count(
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count;

  TRes call({String? mstrStakeholderId, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count(
      mstrStakeholderId: mstrStakeholderId == _undefined
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_provision_count(
    this._res,
  );

  TRes _res;

  call({String? mstrStakeholderId, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count {
  Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count({
    this.mstrStakeholderId,
    this.$__typename = 'VStakeholderStakeholderContactCount',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count(
      mstrStakeholderId: (l$mstrStakeholderId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrStakeholderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrStakeholderId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count
    on Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count<
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count(
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count;

  TRes call({String? mstrStakeholderId, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count(
      mstrStakeholderId: mstrStakeholderId == _undefined
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$stakeholder_contact_count(
    this._res,
  );

  TRes _res;

  call({String? mstrStakeholderId, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user({
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

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user.fromJson(
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
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name.fromJson(
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

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name? name;

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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user
    on Query$SupplierPageRead$allMstrStakeholders$nodes$update_user {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user instance,
    TRes Function(Query$SupplierPageRead$allMstrStakeholders$nodes$update_user)
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user,
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
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user(
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
                as Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name?),
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

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name.fromJson(
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
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name
    on Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name,
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
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierPageRead$allMstrStakeholders$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
