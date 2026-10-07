import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$LicenseHoldersPageRead {
  factory Variables$Query$LicenseHoldersPageRead({
    required int first,
    int? offset,
    Input$MstrLicenseFilter? filter,
    List<Enum$MstrLicensesOrderBy>? orderBy,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$LicenseHoldersPageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (filter != null) r'filter': filter,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$LicenseHoldersPageRead._(this._$data);

  factory Variables$Query$LicenseHoldersPageRead.fromJson(
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
          : Input$MstrLicenseFilter.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrLicensesOrderBy((e as String)))
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$LicenseHoldersPageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrLicenseFilter? get filter =>
      (_$data['filter'] as Input$MstrLicenseFilter?);

  List<Enum$MstrLicensesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrLicensesOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrLicensesOrderBy(e))
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

  CopyWith$Variables$Query$LicenseHoldersPageRead<
    Variables$Query$LicenseHoldersPageRead
  >
  get copyWith =>
      CopyWith$Variables$Query$LicenseHoldersPageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LicenseHoldersPageRead ||
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

abstract class CopyWith$Variables$Query$LicenseHoldersPageRead<TRes> {
  factory CopyWith$Variables$Query$LicenseHoldersPageRead(
    Variables$Query$LicenseHoldersPageRead instance,
    TRes Function(Variables$Query$LicenseHoldersPageRead) then,
  ) = _CopyWithImpl$Variables$Query$LicenseHoldersPageRead;

  factory CopyWith$Variables$Query$LicenseHoldersPageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LicenseHoldersPageRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrLicenseFilter? filter,
    List<Enum$MstrLicensesOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$LicenseHoldersPageRead<TRes>
    implements CopyWith$Variables$Query$LicenseHoldersPageRead<TRes> {
  _CopyWithImpl$Variables$Query$LicenseHoldersPageRead(
    this._instance,
    this._then,
  );

  final Variables$Query$LicenseHoldersPageRead _instance;

  final TRes Function(Variables$Query$LicenseHoldersPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$LicenseHoldersPageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (filter != _undefined) 'filter': (filter as Input$MstrLicenseFilter?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrLicensesOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LicenseHoldersPageRead<TRes>
    implements CopyWith$Variables$Query$LicenseHoldersPageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$LicenseHoldersPageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrLicenseFilter? filter,
    List<Enum$MstrLicensesOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$LicenseHoldersPageRead {
  Query$LicenseHoldersPageRead({
    this.allMstrLicenses,
    this.$__typename = 'Query',
  });

  factory Query$LicenseHoldersPageRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrLicenses = json['allMstrLicenses'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead(
      allMstrLicenses: l$allMstrLicenses == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses.fromJson(
              (l$allMstrLicenses as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LicenseHoldersPageRead$allMstrLicenses? allMstrLicenses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrLicenses = allMstrLicenses;
    _resultData['allMstrLicenses'] = l$allMstrLicenses?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrLicenses = allMstrLicenses;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrLicenses, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LicenseHoldersPageRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrLicenses = allMstrLicenses;
    final lOther$allMstrLicenses = other.allMstrLicenses;
    if (l$allMstrLicenses != lOther$allMstrLicenses) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LicenseHoldersPageRead
    on Query$LicenseHoldersPageRead {
  CopyWith$Query$LicenseHoldersPageRead<Query$LicenseHoldersPageRead>
  get copyWith => CopyWith$Query$LicenseHoldersPageRead(this, (i) => i);
}

abstract class CopyWith$Query$LicenseHoldersPageRead<TRes> {
  factory CopyWith$Query$LicenseHoldersPageRead(
    Query$LicenseHoldersPageRead instance,
    TRes Function(Query$LicenseHoldersPageRead) then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead;

  factory CopyWith$Query$LicenseHoldersPageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$LicenseHoldersPageRead;

  TRes call({
    Query$LicenseHoldersPageRead$allMstrLicenses? allMstrLicenses,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses<TRes>
  get allMstrLicenses;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead<TRes>
    implements CopyWith$Query$LicenseHoldersPageRead<TRes> {
  _CopyWithImpl$Query$LicenseHoldersPageRead(this._instance, this._then);

  final Query$LicenseHoldersPageRead _instance;

  final TRes Function(Query$LicenseHoldersPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrLicenses = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead(
      allMstrLicenses: allMstrLicenses == _undefined
          ? _instance.allMstrLicenses
          : (allMstrLicenses as Query$LicenseHoldersPageRead$allMstrLicenses?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses<TRes>
  get allMstrLicenses {
    final local$allMstrLicenses = _instance.allMstrLicenses;
    return local$allMstrLicenses == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses(
            local$allMstrLicenses,
            (e) => call(allMstrLicenses: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead<TRes>
    implements CopyWith$Query$LicenseHoldersPageRead<TRes> {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead(this._res);

  TRes _res;

  call({
    Query$LicenseHoldersPageRead$allMstrLicenses? allMstrLicenses,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses<TRes>
  get allMstrLicenses =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses.stub(_res);
}

const documentNodeQueryLicenseHoldersPageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LicenseHoldersPageRead'),
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
            name: NameNode(value: 'MstrLicenseFilter'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrLicensesOrderBy'),
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
            name: NameNode(value: 'allMstrLicenses'),
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
                        name: NameNode(value: 'mstrLicenseId'),
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
                        name: NameNode(value: 'detail'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'publicLicense'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'customerLicense'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'organizationLicense'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'updateInterval'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'years'),
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
                              name: NameNode(value: 'days'),
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
                              name: NameNode(value: 'minutes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'seconds'),
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
                        name: NameNode(
                          value: 'mstrStaffLicensesByMstrLicenseId',
                        ),
                        alias: NameNode(value: 'licenses'),
                        arguments: [
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
                                        value: BooleanValueNode(value: false),
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
                                    name: NameNode(value: 'mstrStaffLicenseId'),
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
                                    name: NameNode(value: 'mstrLicenseId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'startAt'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'stopAt'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'abeyance'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'abeyanceAt'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'revocation'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'revocationAt'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'infoStaffByInfoStaffId',
                                    ),
                                    alias: NameNode(value: 'staff'),
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
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
                                          name: NameNode(value: 'privatePhone'),
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
                                                        value:
                                                            'sharedDictionaryId',
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
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
                                                        value:
                                                            'sharedDictionaryId',
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
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
                                                        value:
                                                            'sharedDictionaryId',
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
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
                                                name: NameNode(
                                                  value: 'historyId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'infoStaffId',
                                                ),
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
                                                name: NameNode(
                                                  value: 'privatePhone',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedAppellationByNames',
                                                ),
                                                alias: NameNode(value: 'name'),
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedAppellationsId',
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
                                                              value:
                                                                  'sharedDictionaryId',
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
                                                            alias: NameNode(
                                                              value: 'value',
                                                            ),
                                                            arguments: [
                                                              ArgumentNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'condition',
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
                                                                    value:
                                                                        'nodes',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet: SelectionSetNode(
                                                                    selections: [
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'dictionaryValue',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              '__typename',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
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
                                                              value:
                                                                  'sharedDictionaryId',
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
                                                            alias: NameNode(
                                                              value: 'value',
                                                            ),
                                                            arguments: [
                                                              ArgumentNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'condition',
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
                                                                    value:
                                                                        'nodes',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet: SelectionSetNode(
                                                                    selections: [
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'dictionaryValue',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              '__typename',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
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
                                                              value:
                                                                  'sharedDictionaryId',
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
                                                            alias: NameNode(
                                                              value: 'value',
                                                            ),
                                                            arguments: [
                                                              ArgumentNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'condition',
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
                                                                    value:
                                                                        'nodes',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet: SelectionSetNode(
                                                                    selections: [
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'dictionaryValue',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              '__typename',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
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
                                      value: 'mstrLicenseByMstrLicenseId',
                                    ),
                                    alias: NameNode(value: 'license'),
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'mstrLicenseId',
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
                                          name: NameNode(value: 'detail'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'publicLicense',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'customerLicense',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'organizationLicense',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value: 'updateInterval',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'years'),
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
                                                name: NameNode(value: 'days'),
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
                                                name: NameNode(
                                                  value: 'minutes',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'seconds',
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
                                                        value:
                                                            'sharedDictionaryId',
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
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
                                                        value:
                                                            'sharedDictionaryId',
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
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
                                                        value:
                                                            'sharedDictionaryId',
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
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        '__typename',
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
                                                name: NameNode(
                                                  value: 'historyId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'infoStaffId',
                                                ),
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
                                                name: NameNode(
                                                  value: 'privatePhone',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedAppellationByNames',
                                                ),
                                                alias: NameNode(value: 'name'),
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'sharedAppellationsId',
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
                                                              value:
                                                                  'sharedDictionaryId',
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
                                                            alias: NameNode(
                                                              value: 'value',
                                                            ),
                                                            arguments: [
                                                              ArgumentNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'condition',
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
                                                                    value:
                                                                        'nodes',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet: SelectionSetNode(
                                                                    selections: [
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'dictionaryValue',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              '__typename',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
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
                                                              value:
                                                                  'sharedDictionaryId',
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
                                                            alias: NameNode(
                                                              value: 'value',
                                                            ),
                                                            arguments: [
                                                              ArgumentNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'condition',
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
                                                                    value:
                                                                        'nodes',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet: SelectionSetNode(
                                                                    selections: [
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'dictionaryValue',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              '__typename',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
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
                                                              value:
                                                                  'sharedDictionaryId',
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
                                                            alias: NameNode(
                                                              value: 'value',
                                                            ),
                                                            arguments: [
                                                              ArgumentNode(
                                                                name: NameNode(
                                                                  value:
                                                                      'condition',
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
                                                                    value:
                                                                        'nodes',
                                                                  ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet: SelectionSetNode(
                                                                    selections: [
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              'dictionaryValue',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
                                                                        directives:
                                                                            [],
                                                                        selectionSet:
                                                                            null,
                                                                      ),
                                                                      FieldNode(
                                                                        name: NameNode(
                                                                          value:
                                                                              '__typename',
                                                                        ),
                                                                        alias:
                                                                            null,
                                                                        arguments:
                                                                            [],
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
Query$LicenseHoldersPageRead _parserFn$Query$LicenseHoldersPageRead(
  Map<String, dynamic> data,
) => Query$LicenseHoldersPageRead.fromJson(data);
typedef OnQueryComplete$Query$LicenseHoldersPageRead =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$LicenseHoldersPageRead?,
    );

class Options$Query$LicenseHoldersPageRead
    extends graphql.QueryOptions<Query$LicenseHoldersPageRead> {
  Options$Query$LicenseHoldersPageRead({
    String? operationName,
    required Variables$Query$LicenseHoldersPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LicenseHoldersPageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LicenseHoldersPageRead? onComplete,
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
                     : _parserFn$Query$LicenseHoldersPageRead(data),
               ),
         onError: onError,
         document: documentNodeQueryLicenseHoldersPageRead,
         parserFn: _parserFn$Query$LicenseHoldersPageRead,
       );

  final OnQueryComplete$Query$LicenseHoldersPageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$LicenseHoldersPageRead
    extends graphql.WatchQueryOptions<Query$LicenseHoldersPageRead> {
  WatchOptions$Query$LicenseHoldersPageRead({
    String? operationName,
    required Variables$Query$LicenseHoldersPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LicenseHoldersPageRead? typedOptimisticResult,
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
         document: documentNodeQueryLicenseHoldersPageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$LicenseHoldersPageRead,
       );
}

class FetchMoreOptions$Query$LicenseHoldersPageRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LicenseHoldersPageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$LicenseHoldersPageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryLicenseHoldersPageRead,
       );
}

extension ClientExtension$Query$LicenseHoldersPageRead
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LicenseHoldersPageRead>>
  query$LicenseHoldersPageRead(
    Options$Query$LicenseHoldersPageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$LicenseHoldersPageRead>
  watchQuery$LicenseHoldersPageRead(
    WatchOptions$Query$LicenseHoldersPageRead options,
  ) => this.watchQuery(options);

  void writeQuery$LicenseHoldersPageRead({
    required Query$LicenseHoldersPageRead data,
    required Variables$Query$LicenseHoldersPageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryLicenseHoldersPageRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$LicenseHoldersPageRead? readQuery$LicenseHoldersPageRead({
    required Variables$Query$LicenseHoldersPageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryLicenseHoldersPageRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$LicenseHoldersPageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LicenseHoldersPageRead>
useQuery$LicenseHoldersPageRead(Options$Query$LicenseHoldersPageRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$LicenseHoldersPageRead>
useWatchQuery$LicenseHoldersPageRead(
  WatchOptions$Query$LicenseHoldersPageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$LicenseHoldersPageRead$Widget
    extends graphql_flutter.Query<Query$LicenseHoldersPageRead> {
  Query$LicenseHoldersPageRead$Widget({
    widgets.Key? key,
    required Options$Query$LicenseHoldersPageRead options,
    required graphql_flutter.QueryBuilder<Query$LicenseHoldersPageRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$LicenseHoldersPageRead$allMstrLicenses {
  Query$LicenseHoldersPageRead$allMstrLicenses({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrLicensesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses(
      totalCount: (l$totalCount as int),
      pageInfo: Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo pageInfo;

  final List<Query$LicenseHoldersPageRead$allMstrLicenses$nodes?> nodes;

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
    if (other is! Query$LicenseHoldersPageRead$allMstrLicenses ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses
    on Query$LicenseHoldersPageRead$allMstrLicenses {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses<
    Query$LicenseHoldersPageRead$allMstrLicenses
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses(this, (i) => i);
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses<TRes> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses(
    Query$LicenseHoldersPageRead$allMstrLicenses instance,
    TRes Function(Query$LicenseHoldersPageRead$allMstrLicenses) then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses.stub(TRes res) =
      _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses;

  TRes call({
    int? totalCount,
    Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo? pageInfo,
    List<Query$LicenseHoldersPageRead$allMstrLicenses$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$LicenseHoldersPageRead$allMstrLicenses$nodes?> Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses<TRes>
    implements CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses<TRes> {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses _instance;

  final TRes Function(Query$LicenseHoldersPageRead$allMstrLicenses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<Query$LicenseHoldersPageRead$allMstrLicenses$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$LicenseHoldersPageRead$allMstrLicenses$nodes?> Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses<TRes>
    implements CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses<TRes> {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo? pageInfo,
    List<Query$LicenseHoldersPageRead$allMstrLicenses$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo {
  Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo(
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
    if (other is! Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo
    on Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo<
    Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo(
    Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo instance,
    TRes Function(Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo) then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo<TRes>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo<TRes> {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo _instance;

  final TRes Function(Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo(
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

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo<TRes> {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes({
    required this.mstrLicenseId,
    this.code,
    this.detail,
    this.publicLicense,
    this.customerLicense,
    this.organizationLicense,
    this.updateInterval,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    required this.licenses,
    this.update_user,
    this.$__typename = 'MstrLicense',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLicenseId = json['mstrLicenseId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$publicLicense = json['publicLicense'];
    final l$customerLicense = json['customerLicense'];
    final l$organizationLicense = json['organizationLicense'];
    final l$updateInterval = json['updateInterval'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$licenses = json['licenses'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes(
      mstrLicenseId: (l$mstrLicenseId as String),
      code: (l$code as String?),
      detail: (l$detail as String?),
      publicLicense: (l$publicLicense as bool?),
      customerLicense: (l$customerLicense as bool?),
      organizationLicense: (l$organizationLicense as bool?),
      updateInterval: l$updateInterval == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval.fromJson(
              (l$updateInterval as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      licenses:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses.fromJson(
            (l$licenses as Map<String, dynamic>),
          ),
      update_user: l$update_user == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrLicenseId;

  final String? code;

  final String? detail;

  final bool? publicLicense;

  final bool? customerLicense;

  final bool? organizationLicense;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval?
  updateInterval;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels? labels;

  @Deprecated('Please use mstrStaffLicenseByMstrLicenseId instead')
  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses licenses;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLicenseId = mstrLicenseId;
    _resultData['mstrLicenseId'] = l$mstrLicenseId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$publicLicense = publicLicense;
    _resultData['publicLicense'] = l$publicLicense;
    final l$customerLicense = customerLicense;
    _resultData['customerLicense'] = l$customerLicense;
    final l$organizationLicense = organizationLicense;
    _resultData['organizationLicense'] = l$organizationLicense;
    final l$updateInterval = updateInterval;
    _resultData['updateInterval'] = l$updateInterval?.toJson();
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$licenses = licenses;
    _resultData['licenses'] = l$licenses.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrLicenseId = mstrLicenseId;
    final l$code = code;
    final l$detail = detail;
    final l$publicLicense = publicLicense;
    final l$customerLicense = customerLicense;
    final l$organizationLicense = organizationLicense;
    final l$updateInterval = updateInterval;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$licenses = licenses;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLicenseId,
      l$code,
      l$detail,
      l$publicLicense,
      l$customerLicense,
      l$organizationLicense,
      l$updateInterval,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$labels,
      l$licenses,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLicenseId = mstrLicenseId;
    final lOther$mstrLicenseId = other.mstrLicenseId;
    if (l$mstrLicenseId != lOther$mstrLicenseId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
      return false;
    }
    final l$publicLicense = publicLicense;
    final lOther$publicLicense = other.publicLicense;
    if (l$publicLicense != lOther$publicLicense) {
      return false;
    }
    final l$customerLicense = customerLicense;
    final lOther$customerLicense = other.customerLicense;
    if (l$customerLicense != lOther$customerLicense) {
      return false;
    }
    final l$organizationLicense = organizationLicense;
    final lOther$organizationLicense = other.organizationLicense;
    if (l$organizationLicense != lOther$organizationLicense) {
      return false;
    }
    final l$updateInterval = updateInterval;
    final lOther$updateInterval = other.updateInterval;
    if (l$updateInterval != lOther$updateInterval) {
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
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$licenses = licenses;
    final lOther$licenses = other.licenses;
    if (l$licenses != lOther$licenses) {
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes
  >
  get copyWith => CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes instance,
    TRes Function(Query$LicenseHoldersPageRead$allMstrLicenses$nodes) then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes;

  TRes call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval?
    updateInterval,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels? labels,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses? licenses,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user? update_user,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval<
    TRes
  >
  get updateInterval;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels<TRes>
  get labels;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses<TRes>
  get licenses;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user<TRes>
  get update_user;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes<TRes>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes<TRes> {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes _instance;

  final TRes Function(Query$LicenseHoldersPageRead$allMstrLicenses$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLicenseId = _undefined,
    Object? code = _undefined,
    Object? detail = _undefined,
    Object? publicLicense = _undefined,
    Object? customerLicense = _undefined,
    Object? organizationLicense = _undefined,
    Object? updateInterval = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? licenses = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes(
      mstrLicenseId: mstrLicenseId == _undefined || mstrLicenseId == null
          ? _instance.mstrLicenseId
          : (mstrLicenseId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      publicLicense: publicLicense == _undefined
          ? _instance.publicLicense
          : (publicLicense as bool?),
      customerLicense: customerLicense == _undefined
          ? _instance.customerLicense
          : (customerLicense as bool?),
      organizationLicense: organizationLicense == _undefined
          ? _instance.organizationLicense
          : (organizationLicense as bool?),
      updateInterval: updateInterval == _undefined
          ? _instance.updateInterval
          : (updateInterval
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels?),
      licenses: licenses == _undefined || licenses == null
          ? _instance.licenses
          : (licenses
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval<
    TRes
  >
  get updateInterval {
    final local$updateInterval = _instance.updateInterval;
    return local$updateInterval == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval(
            local$updateInterval,
            (e) => call(updateInterval: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses<TRes>
  get licenses {
    final local$licenses = _instance.licenses;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses(
      local$licenses,
      (e) => call(licenses: e),
    );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user<TRes>
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes<TRes>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes<TRes> {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval?
    updateInterval,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels? labels,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses? licenses,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user? update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval<
    TRes
  >
  get updateInterval =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels<TRes>
  get labels =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses<TRes>
  get licenses =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user<TRes>
  get update_user =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval({
    this.years,
    this.months,
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.$__typename = 'Interval',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$years = json['years'];
    final l$months = json['months'];
    final l$days = json['days'];
    final l$hours = json['hours'];
    final l$minutes = json['minutes'];
    final l$seconds = json['seconds'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval(
      years: (l$years as int?),
      months: (l$months as int?),
      days: (l$days as int?),
      hours: (l$hours as int?),
      minutes: (l$minutes as int?),
      seconds: (l$seconds as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? years;

  final int? months;

  final int? days;

  final int? hours;

  final int? minutes;

  final double? seconds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$years = years;
    _resultData['years'] = l$years;
    final l$months = months;
    _resultData['months'] = l$months;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$hours = hours;
    _resultData['hours'] = l$hours;
    final l$minutes = minutes;
    _resultData['minutes'] = l$minutes;
    final l$seconds = seconds;
    _resultData['seconds'] = l$seconds;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$years = years;
    final l$months = months;
    final l$days = days;
    final l$hours = hours;
    final l$minutes = minutes;
    final l$seconds = seconds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$years,
      l$months,
      l$days,
      l$hours,
      l$minutes,
      l$seconds,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$years = years;
    final lOther$years = other.years;
    if (l$years != lOther$years) {
      return false;
    }
    final l$months = months;
    final lOther$months = other.months;
    if (l$months != lOther$months) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$hours = hours;
    final lOther$hours = other.hours;
    if (l$hours != lOther$hours) {
      return false;
    }
    final l$minutes = minutes;
    final lOther$minutes = other.minutes;
    if (l$minutes != lOther$minutes) {
      return false;
    }
    final l$seconds = seconds;
    final lOther$seconds = other.seconds;
    if (l$seconds != lOther$seconds) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval;

  TRes call({
    int? years,
    int? months,
    int? days,
    int? hours,
    int? minutes,
    double? seconds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? years = _undefined,
    Object? months = _undefined,
    Object? days = _undefined,
    Object? hours = _undefined,
    Object? minutes = _undefined,
    Object? seconds = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval(
      years: years == _undefined ? _instance.years : (years as int?),
      months: months == _undefined ? _instance.months : (months as int?),
      days: days == _undefined ? _instance.days : (days as int?),
      hours: hours == _undefined ? _instance.hours : (hours as int?),
      minutes: minutes == _undefined ? _instance.minutes : (minutes as int?),
      seconds: seconds == _undefined ? _instance.seconds : (seconds as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$updateInterval(
    this._res,
  );

  TRes _res;

  call({
    int? years,
    int? months,
    int? days,
    int? hours,
    int? minutes,
    double? seconds,
    String? $__typename,
  }) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels.fromJson(
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
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels instance,
    TRes Function(Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels)
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels _instance;

  final TRes Function(Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrStaffLicensesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo
  pageInfo;

  final List<Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes?>
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
    if (other is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses instance,
    TRes Function(Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses)
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses;

  TRes call({
    int? totalCount,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo?
    pageInfo,
    List<Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes?>?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes?>
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes?>
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo?
    pageInfo,
    List<Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes?>?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo(
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

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes({
    required this.mstrStaffLicenseId,
    required this.infoStaffId,
    required this.mstrLicenseId,
    this.startAt,
    required this.stopAt,
    this.abeyance,
    this.abeyanceAt,
    this.revocation,
    this.revocationAt,
    this.staff,
    this.license,
    this.$__typename = 'MstrStaffLicense',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStaffLicenseId = json['mstrStaffLicenseId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$mstrLicenseId = json['mstrLicenseId'];
    final l$startAt = json['startAt'];
    final l$stopAt = json['stopAt'];
    final l$abeyance = json['abeyance'];
    final l$abeyanceAt = json['abeyanceAt'];
    final l$revocation = json['revocation'];
    final l$revocationAt = json['revocationAt'];
    final l$staff = json['staff'];
    final l$license = json['license'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes(
      mstrStaffLicenseId: (l$mstrStaffLicenseId as String),
      infoStaffId: (l$infoStaffId as String),
      mstrLicenseId: (l$mstrLicenseId as String),
      startAt: (l$startAt as String?),
      stopAt: (l$stopAt as String),
      abeyance: (l$abeyance as bool?),
      abeyanceAt: (l$abeyanceAt as String?),
      revocation: (l$revocation as bool?),
      revocationAt: (l$revocationAt as String?),
      staff: l$staff == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff.fromJson(
              (l$staff as Map<String, dynamic>),
            ),
      license: l$license == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license.fromJson(
              (l$license as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStaffLicenseId;

  final String infoStaffId;

  final String mstrLicenseId;

  final String? startAt;

  final String stopAt;

  final bool? abeyance;

  final String? abeyanceAt;

  final bool? revocation;

  final String? revocationAt;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff?
  staff;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license?
  license;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    _resultData['mstrStaffLicenseId'] = l$mstrStaffLicenseId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$mstrLicenseId = mstrLicenseId;
    _resultData['mstrLicenseId'] = l$mstrLicenseId;
    final l$startAt = startAt;
    _resultData['startAt'] = l$startAt;
    final l$stopAt = stopAt;
    _resultData['stopAt'] = l$stopAt;
    final l$abeyance = abeyance;
    _resultData['abeyance'] = l$abeyance;
    final l$abeyanceAt = abeyanceAt;
    _resultData['abeyanceAt'] = l$abeyanceAt;
    final l$revocation = revocation;
    _resultData['revocation'] = l$revocation;
    final l$revocationAt = revocationAt;
    _resultData['revocationAt'] = l$revocationAt;
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$license = license;
    _resultData['license'] = l$license?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    final l$infoStaffId = infoStaffId;
    final l$mstrLicenseId = mstrLicenseId;
    final l$startAt = startAt;
    final l$stopAt = stopAt;
    final l$abeyance = abeyance;
    final l$abeyanceAt = abeyanceAt;
    final l$revocation = revocation;
    final l$revocationAt = revocationAt;
    final l$staff = staff;
    final l$license = license;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStaffLicenseId,
      l$infoStaffId,
      l$mstrLicenseId,
      l$startAt,
      l$stopAt,
      l$abeyance,
      l$abeyanceAt,
      l$revocation,
      l$revocationAt,
      l$staff,
      l$license,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    final lOther$mstrStaffLicenseId = other.mstrStaffLicenseId;
    if (l$mstrStaffLicenseId != lOther$mstrStaffLicenseId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$mstrLicenseId = mstrLicenseId;
    final lOther$mstrLicenseId = other.mstrLicenseId;
    if (l$mstrLicenseId != lOther$mstrLicenseId) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$stopAt = stopAt;
    final lOther$stopAt = other.stopAt;
    if (l$stopAt != lOther$stopAt) {
      return false;
    }
    final l$abeyance = abeyance;
    final lOther$abeyance = other.abeyance;
    if (l$abeyance != lOther$abeyance) {
      return false;
    }
    final l$abeyanceAt = abeyanceAt;
    final lOther$abeyanceAt = other.abeyanceAt;
    if (l$abeyanceAt != lOther$abeyanceAt) {
      return false;
    }
    final l$revocation = revocation;
    final lOther$revocation = other.revocation;
    if (l$revocation != lOther$revocation) {
      return false;
    }
    final l$revocationAt = revocationAt;
    final lOther$revocationAt = other.revocationAt;
    if (l$revocationAt != lOther$revocationAt) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
      return false;
    }
    final l$license = license;
    final lOther$license = other.license;
    if (l$license != lOther$license) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes;

  TRes call({
    String? mstrStaffLicenseId,
    String? infoStaffId,
    String? mstrLicenseId,
    String? startAt,
    String? stopAt,
    bool? abeyance,
    String? abeyanceAt,
    bool? revocation,
    String? revocationAt,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff?
    staff,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license?
    license,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff<
    TRes
  >
  get staff;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license<
    TRes
  >
  get license;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffLicenseId = _undefined,
    Object? infoStaffId = _undefined,
    Object? mstrLicenseId = _undefined,
    Object? startAt = _undefined,
    Object? stopAt = _undefined,
    Object? abeyance = _undefined,
    Object? abeyanceAt = _undefined,
    Object? revocation = _undefined,
    Object? revocationAt = _undefined,
    Object? staff = _undefined,
    Object? license = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes(
      mstrStaffLicenseId:
          mstrStaffLicenseId == _undefined || mstrStaffLicenseId == null
          ? _instance.mstrStaffLicenseId
          : (mstrStaffLicenseId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      mstrLicenseId: mstrLicenseId == _undefined || mstrLicenseId == null
          ? _instance.mstrLicenseId
          : (mstrLicenseId as String),
      startAt: startAt == _undefined ? _instance.startAt : (startAt as String?),
      stopAt: stopAt == _undefined || stopAt == null
          ? _instance.stopAt
          : (stopAt as String),
      abeyance: abeyance == _undefined
          ? _instance.abeyance
          : (abeyance as bool?),
      abeyanceAt: abeyanceAt == _undefined
          ? _instance.abeyanceAt
          : (abeyanceAt as String?),
      revocation: revocation == _undefined
          ? _instance.revocation
          : (revocation as bool?),
      revocationAt: revocationAt == _undefined
          ? _instance.revocationAt
          : (revocationAt as String?),
      staff: staff == _undefined
          ? _instance.staff
          : (staff
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff?),
      license: license == _undefined
          ? _instance.license
          : (license
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff<
    TRes
  >
  get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff(
            local$staff,
            (e) => call(staff: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license<
    TRes
  >
  get license {
    final local$license = _instance.license;
    return local$license == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license(
            local$license,
            (e) => call(license: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStaffLicenseId,
    String? infoStaffId,
    String? mstrLicenseId,
    String? startAt,
    String? stopAt,
    bool? abeyance,
    String? abeyanceAt,
    bool? revocation,
    String? revocationAt,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff?
    staff,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license?
    license,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff<
    TRes
  >
  get staff =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license<
    TRes
  >
  get license =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff({
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.privatePhone,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.update_user,
    this.$__typename = 'InfoStaff',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$privatePhone = json['privatePhone'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff(
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      privatePhone: (l$privatePhone as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? privatePhone;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels?
  labels;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoStaffId = infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$sex = sex;
    final l$phone = phone;
    final l$privatePhone = privatePhone;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$privatePhone,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$labels,
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff ||
        runtimeType != other.runtimeType) {
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
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (l$privatePhone != lOther$privatePhone) {
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
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff;

  TRes call({
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? privatePhone,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels?
    labels,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels<
    TRes
  >
  get labels;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? privatePhone = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff(
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff(
    this._res,
  );

  TRes _res;

  call({
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? privatePhone,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels?
    labels,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels.fromJson(
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
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels,
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
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user({
    required this.historyId,
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.name,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      name: l$name == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name?
  name;

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
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
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
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name.fromJson(
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
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name,
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
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license({
    required this.mstrLicenseId,
    this.code,
    this.detail,
    this.publicLicense,
    this.customerLicense,
    this.organizationLicense,
    this.updateInterval,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.update_user,
    this.$__typename = 'MstrLicense',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLicenseId = json['mstrLicenseId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$publicLicense = json['publicLicense'];
    final l$customerLicense = json['customerLicense'];
    final l$organizationLicense = json['organizationLicense'];
    final l$updateInterval = json['updateInterval'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license(
      mstrLicenseId: (l$mstrLicenseId as String),
      code: (l$code as String?),
      detail: (l$detail as String?),
      publicLicense: (l$publicLicense as bool?),
      customerLicense: (l$customerLicense as bool?),
      organizationLicense: (l$organizationLicense as bool?),
      updateInterval: l$updateInterval == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval.fromJson(
              (l$updateInterval as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrLicenseId;

  final String? code;

  final String? detail;

  final bool? publicLicense;

  final bool? customerLicense;

  final bool? organizationLicense;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval?
  updateInterval;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels?
  labels;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLicenseId = mstrLicenseId;
    _resultData['mstrLicenseId'] = l$mstrLicenseId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$publicLicense = publicLicense;
    _resultData['publicLicense'] = l$publicLicense;
    final l$customerLicense = customerLicense;
    _resultData['customerLicense'] = l$customerLicense;
    final l$organizationLicense = organizationLicense;
    _resultData['organizationLicense'] = l$organizationLicense;
    final l$updateInterval = updateInterval;
    _resultData['updateInterval'] = l$updateInterval?.toJson();
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrLicenseId = mstrLicenseId;
    final l$code = code;
    final l$detail = detail;
    final l$publicLicense = publicLicense;
    final l$customerLicense = customerLicense;
    final l$organizationLicense = organizationLicense;
    final l$updateInterval = updateInterval;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLicenseId,
      l$code,
      l$detail,
      l$publicLicense,
      l$customerLicense,
      l$organizationLicense,
      l$updateInterval,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$labels,
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLicenseId = mstrLicenseId;
    final lOther$mstrLicenseId = other.mstrLicenseId;
    if (l$mstrLicenseId != lOther$mstrLicenseId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
      return false;
    }
    final l$publicLicense = publicLicense;
    final lOther$publicLicense = other.publicLicense;
    if (l$publicLicense != lOther$publicLicense) {
      return false;
    }
    final l$customerLicense = customerLicense;
    final lOther$customerLicense = other.customerLicense;
    if (l$customerLicense != lOther$customerLicense) {
      return false;
    }
    final l$organizationLicense = organizationLicense;
    final lOther$organizationLicense = other.organizationLicense;
    if (l$organizationLicense != lOther$organizationLicense) {
      return false;
    }
    final l$updateInterval = updateInterval;
    final lOther$updateInterval = other.updateInterval;
    if (l$updateInterval != lOther$updateInterval) {
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
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license;

  TRes call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval?
    updateInterval,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels?
    labels,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval<
    TRes
  >
  get updateInterval;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels<
    TRes
  >
  get labels;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLicenseId = _undefined,
    Object? code = _undefined,
    Object? detail = _undefined,
    Object? publicLicense = _undefined,
    Object? customerLicense = _undefined,
    Object? organizationLicense = _undefined,
    Object? updateInterval = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license(
      mstrLicenseId: mstrLicenseId == _undefined || mstrLicenseId == null
          ? _instance.mstrLicenseId
          : (mstrLicenseId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      publicLicense: publicLicense == _undefined
          ? _instance.publicLicense
          : (publicLicense as bool?),
      customerLicense: customerLicense == _undefined
          ? _instance.customerLicense
          : (customerLicense as bool?),
      organizationLicense: organizationLicense == _undefined
          ? _instance.organizationLicense
          : (organizationLicense as bool?),
      updateInterval: updateInterval == _undefined
          ? _instance.updateInterval
          : (updateInterval
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval<
    TRes
  >
  get updateInterval {
    final local$updateInterval = _instance.updateInterval;
    return local$updateInterval == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval(
            local$updateInterval,
            (e) => call(updateInterval: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license(
    this._res,
  );

  TRes _res;

  call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval?
    updateInterval,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels?
    labels,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval<
    TRes
  >
  get updateInterval =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval({
    this.years,
    this.months,
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.$__typename = 'Interval',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$years = json['years'];
    final l$months = json['months'];
    final l$days = json['days'];
    final l$hours = json['hours'];
    final l$minutes = json['minutes'];
    final l$seconds = json['seconds'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval(
      years: (l$years as int?),
      months: (l$months as int?),
      days: (l$days as int?),
      hours: (l$hours as int?),
      minutes: (l$minutes as int?),
      seconds: (l$seconds as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? years;

  final int? months;

  final int? days;

  final int? hours;

  final int? minutes;

  final double? seconds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$years = years;
    _resultData['years'] = l$years;
    final l$months = months;
    _resultData['months'] = l$months;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$hours = hours;
    _resultData['hours'] = l$hours;
    final l$minutes = minutes;
    _resultData['minutes'] = l$minutes;
    final l$seconds = seconds;
    _resultData['seconds'] = l$seconds;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$years = years;
    final l$months = months;
    final l$days = days;
    final l$hours = hours;
    final l$minutes = minutes;
    final l$seconds = seconds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$years,
      l$months,
      l$days,
      l$hours,
      l$minutes,
      l$seconds,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$years = years;
    final lOther$years = other.years;
    if (l$years != lOther$years) {
      return false;
    }
    final l$months = months;
    final lOther$months = other.months;
    if (l$months != lOther$months) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$hours = hours;
    final lOther$hours = other.hours;
    if (l$hours != lOther$hours) {
      return false;
    }
    final l$minutes = minutes;
    final lOther$minutes = other.minutes;
    if (l$minutes != lOther$minutes) {
      return false;
    }
    final l$seconds = seconds;
    final lOther$seconds = other.seconds;
    if (l$seconds != lOther$seconds) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval;

  TRes call({
    int? years,
    int? months,
    int? days,
    int? hours,
    int? minutes,
    double? seconds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? years = _undefined,
    Object? months = _undefined,
    Object? days = _undefined,
    Object? hours = _undefined,
    Object? minutes = _undefined,
    Object? seconds = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval(
      years: years == _undefined ? _instance.years : (years as int?),
      months: months == _undefined ? _instance.months : (months as int?),
      days: days == _undefined ? _instance.days : (days as int?),
      hours: hours == _undefined ? _instance.hours : (hours as int?),
      minutes: minutes == _undefined ? _instance.minutes : (minutes as int?),
      seconds: seconds == _undefined ? _instance.seconds : (seconds as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$updateInterval(
    this._res,
  );

  TRes _res;

  call({
    int? years,
    int? months,
    int? days,
    int? hours,
    int? minutes,
    double? seconds,
    String? $__typename,
  }) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels.fromJson(
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
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels,
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
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user({
    required this.historyId,
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.name,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      name: l$name == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name?
  name;

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
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
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
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name.fromJson(
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
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name,
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
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$licenses$nodes$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user({
    required this.historyId,
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.name,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      name: l$name == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name?
  name;

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
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
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
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name? name,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name? name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name.fromJson(
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
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name
    on Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name,
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
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicenseHoldersPageRead$allMstrLicenses$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
