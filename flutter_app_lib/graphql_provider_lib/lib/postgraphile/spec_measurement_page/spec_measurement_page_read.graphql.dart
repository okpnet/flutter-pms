import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SpecMeasurementPageRead {
  factory Variables$Query$SpecMeasurementPageRead({
    required int first,
    int? offset,
    Input$MstrSpecMeasurementCondition? condition,
    List<Enum$MstrSpecMeasurementsOrderBy>? orderBy,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$SpecMeasurementPageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$SpecMeasurementPageRead._(this._$data);

  factory Variables$Query$SpecMeasurementPageRead.fromJson(
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
          : Input$MstrSpecMeasurementCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrSpecMeasurementsOrderBy((e as String)))
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$SpecMeasurementPageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrSpecMeasurementCondition? get condition =>
      (_$data['condition'] as Input$MstrSpecMeasurementCondition?);

  List<Enum$MstrSpecMeasurementsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrSpecMeasurementsOrderBy>?);

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
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy
          ?.map((e) => toJson$Enum$MstrSpecMeasurementsOrderBy(e))
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

  CopyWith$Variables$Query$SpecMeasurementPageRead<
    Variables$Query$SpecMeasurementPageRead
  >
  get copyWith =>
      CopyWith$Variables$Query$SpecMeasurementPageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SpecMeasurementPageRead ||
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
    final l$condition = condition;
    final l$orderBy = orderBy;
    final l$languageCodeId = languageCodeId;
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
      l$languageCodeId,
      _$data.containsKey('removed') ? l$removed : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SpecMeasurementPageRead<TRes> {
  factory CopyWith$Variables$Query$SpecMeasurementPageRead(
    Variables$Query$SpecMeasurementPageRead instance,
    TRes Function(Variables$Query$SpecMeasurementPageRead) then,
  ) = _CopyWithImpl$Variables$Query$SpecMeasurementPageRead;

  factory CopyWith$Variables$Query$SpecMeasurementPageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SpecMeasurementPageRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrSpecMeasurementCondition? condition,
    List<Enum$MstrSpecMeasurementsOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$SpecMeasurementPageRead<TRes>
    implements CopyWith$Variables$Query$SpecMeasurementPageRead<TRes> {
  _CopyWithImpl$Variables$Query$SpecMeasurementPageRead(
    this._instance,
    this._then,
  );

  final Variables$Query$SpecMeasurementPageRead _instance;

  final TRes Function(Variables$Query$SpecMeasurementPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$SpecMeasurementPageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrSpecMeasurementCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrSpecMeasurementsOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SpecMeasurementPageRead<TRes>
    implements CopyWith$Variables$Query$SpecMeasurementPageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$SpecMeasurementPageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrSpecMeasurementCondition? condition,
    List<Enum$MstrSpecMeasurementsOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$SpecMeasurementPageRead {
  Query$SpecMeasurementPageRead({
    this.allMstrSpecMeasurements,
    this.$__typename = 'Query',
  });

  factory Query$SpecMeasurementPageRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrSpecMeasurements = json['allMstrSpecMeasurements'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead(
      allMstrSpecMeasurements: l$allMstrSpecMeasurements == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements.fromJson(
              (l$allMstrSpecMeasurements as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements?
  allMstrSpecMeasurements;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrSpecMeasurements = allMstrSpecMeasurements;
    _resultData['allMstrSpecMeasurements'] = l$allMstrSpecMeasurements
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrSpecMeasurements = allMstrSpecMeasurements;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrSpecMeasurements, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SpecMeasurementPageRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrSpecMeasurements = allMstrSpecMeasurements;
    final lOther$allMstrSpecMeasurements = other.allMstrSpecMeasurements;
    if (l$allMstrSpecMeasurements != lOther$allMstrSpecMeasurements) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SpecMeasurementPageRead
    on Query$SpecMeasurementPageRead {
  CopyWith$Query$SpecMeasurementPageRead<Query$SpecMeasurementPageRead>
  get copyWith => CopyWith$Query$SpecMeasurementPageRead(this, (i) => i);
}

abstract class CopyWith$Query$SpecMeasurementPageRead<TRes> {
  factory CopyWith$Query$SpecMeasurementPageRead(
    Query$SpecMeasurementPageRead instance,
    TRes Function(Query$SpecMeasurementPageRead) then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead;

  factory CopyWith$Query$SpecMeasurementPageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$SpecMeasurementPageRead;

  TRes call({
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements?
    allMstrSpecMeasurements,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements<TRes>
  get allMstrSpecMeasurements;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead<TRes>
    implements CopyWith$Query$SpecMeasurementPageRead<TRes> {
  _CopyWithImpl$Query$SpecMeasurementPageRead(this._instance, this._then);

  final Query$SpecMeasurementPageRead _instance;

  final TRes Function(Query$SpecMeasurementPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrSpecMeasurements = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead(
      allMstrSpecMeasurements: allMstrSpecMeasurements == _undefined
          ? _instance.allMstrSpecMeasurements
          : (allMstrSpecMeasurements
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements<TRes>
  get allMstrSpecMeasurements {
    final local$allMstrSpecMeasurements = _instance.allMstrSpecMeasurements;
    return local$allMstrSpecMeasurements == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements(
            local$allMstrSpecMeasurements,
            (e) => call(allMstrSpecMeasurements: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead<TRes>
    implements CopyWith$Query$SpecMeasurementPageRead<TRes> {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead(this._res);

  TRes _res;

  call({
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements?
    allMstrSpecMeasurements,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements<TRes>
  get allMstrSpecMeasurements =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements.stub(_res);
}

const documentNodeQuerySpecMeasurementPageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SpecMeasurementPageRead'),
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
            name: NameNode(value: 'MstrSpecMeasurementCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrSpecMeasurementsOrderBy'),
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
            name: NameNode(value: 'allMstrSpecMeasurements'),
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
                        name: NameNode(value: 'mstrSpecMeasurementId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'measurementValue'),
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
Query$SpecMeasurementPageRead _parserFn$Query$SpecMeasurementPageRead(
  Map<String, dynamic> data,
) => Query$SpecMeasurementPageRead.fromJson(data);
typedef OnQueryComplete$Query$SpecMeasurementPageRead =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$SpecMeasurementPageRead?,
    );

class Options$Query$SpecMeasurementPageRead
    extends graphql.QueryOptions<Query$SpecMeasurementPageRead> {
  Options$Query$SpecMeasurementPageRead({
    String? operationName,
    required Variables$Query$SpecMeasurementPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SpecMeasurementPageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SpecMeasurementPageRead? onComplete,
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
                     : _parserFn$Query$SpecMeasurementPageRead(data),
               ),
         onError: onError,
         document: documentNodeQuerySpecMeasurementPageRead,
         parserFn: _parserFn$Query$SpecMeasurementPageRead,
       );

  final OnQueryComplete$Query$SpecMeasurementPageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$SpecMeasurementPageRead
    extends graphql.WatchQueryOptions<Query$SpecMeasurementPageRead> {
  WatchOptions$Query$SpecMeasurementPageRead({
    String? operationName,
    required Variables$Query$SpecMeasurementPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SpecMeasurementPageRead? typedOptimisticResult,
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
         document: documentNodeQuerySpecMeasurementPageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$SpecMeasurementPageRead,
       );
}

class FetchMoreOptions$Query$SpecMeasurementPageRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SpecMeasurementPageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SpecMeasurementPageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerySpecMeasurementPageRead,
       );
}

extension ClientExtension$Query$SpecMeasurementPageRead
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SpecMeasurementPageRead>>
  query$SpecMeasurementPageRead(
    Options$Query$SpecMeasurementPageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$SpecMeasurementPageRead>
  watchQuery$SpecMeasurementPageRead(
    WatchOptions$Query$SpecMeasurementPageRead options,
  ) => this.watchQuery(options);

  void writeQuery$SpecMeasurementPageRead({
    required Query$SpecMeasurementPageRead data,
    required Variables$Query$SpecMeasurementPageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQuerySpecMeasurementPageRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$SpecMeasurementPageRead? readQuery$SpecMeasurementPageRead({
    required Variables$Query$SpecMeasurementPageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerySpecMeasurementPageRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$SpecMeasurementPageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SpecMeasurementPageRead>
useQuery$SpecMeasurementPageRead(
  Options$Query$SpecMeasurementPageRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SpecMeasurementPageRead>
useWatchQuery$SpecMeasurementPageRead(
  WatchOptions$Query$SpecMeasurementPageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$SpecMeasurementPageRead$Widget
    extends graphql_flutter.Query<Query$SpecMeasurementPageRead> {
  Query$SpecMeasurementPageRead$Widget({
    widgets.Key? key,
    required Options$Query$SpecMeasurementPageRead options,
    required graphql_flutter.QueryBuilder<Query$SpecMeasurementPageRead>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrSpecMeasurementsConnection',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo pageInfo;

  final List<Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes?>
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
    if (other is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements
    on Query$SpecMeasurementPageRead$allMstrSpecMeasurements {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements instance,
    TRes Function(Query$SpecMeasurementPageRead$allMstrSpecMeasurements) then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements;

  TRes call({
    int? totalCount,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo? pageInfo,
    List<Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes?>
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements<TRes>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements<TRes> {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements _instance;

  final TRes Function(Query$SpecMeasurementPageRead$allMstrSpecMeasurements)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes?>
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements<TRes> {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo? pageInfo,
    List<Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo(
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo
    on Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo(
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

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes({
    required this.mstrSpecMeasurementId,
    required this.measurementValue,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.unit,
    this.update_user,
    this.$__typename = 'MstrSpecMeasurement',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrSpecMeasurementId = json['mstrSpecMeasurementId'];
    final l$measurementValue = json['measurementValue'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$unit = json['unit'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes(
      mstrSpecMeasurementId: (l$mstrSpecMeasurementId as String),
      measurementValue: (l$measurementValue as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      unit: l$unit == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrSpecMeasurementId;

  final String measurementValue;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit? unit;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    _resultData['mstrSpecMeasurementId'] = l$mstrSpecMeasurementId;
    final l$measurementValue = measurementValue;
    _resultData['measurementValue'] = l$measurementValue;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final l$measurementValue = measurementValue;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$unit = unit;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrSpecMeasurementId,
      l$measurementValue,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$unit,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrSpecMeasurementId = mstrSpecMeasurementId;
    final lOther$mstrSpecMeasurementId = other.mstrSpecMeasurementId;
    if (l$mstrSpecMeasurementId != lOther$mstrSpecMeasurementId) {
      return false;
    }
    final l$measurementValue = measurementValue;
    final lOther$measurementValue = other.measurementValue;
    if (l$measurementValue != lOther$measurementValue) {
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
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes
    on Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes instance,
    TRes Function(Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes)
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes;

  TRes call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit? unit,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit<
    TRes
  >
  get unit;
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrSpecMeasurementId = _undefined,
    Object? measurementValue = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? unit = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes(
      mstrSpecMeasurementId:
          mstrSpecMeasurementId == _undefined || mstrSpecMeasurementId == null
          ? _instance.mstrSpecMeasurementId
          : (mstrSpecMeasurementId as String),
      measurementValue:
          measurementValue == _undefined || measurementValue == null
          ? _instance.measurementValue
          : (measurementValue as String),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit<
    TRes
  >
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrSpecMeasurementId,
    String? measurementValue,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit? unit,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit<
    TRes
  >
  get unit =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit.stub(
        _res,
      );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit
    on Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit;

  TRes call({
    String? sharedUnitId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels.fromJson(
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
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels
    on Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels,
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
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user({
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

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user.fromJson(
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
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user(
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
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name.fromJson(
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

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user
    on Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user,
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
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user(
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
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user(
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
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name.fromJson(
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
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name
    on Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name,
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
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
