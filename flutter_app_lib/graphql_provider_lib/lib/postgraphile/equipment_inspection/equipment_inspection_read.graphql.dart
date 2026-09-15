import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$EquipmentInspectionRead {
  factory Variables$Query$EquipmentInspectionRead({
    required int first,
    int? offset,
    Input$MstrInspectionCondition? condition,
    List<Enum$MstrInspectionsOrderBy>? orderBy,
    required bool ja,
    required bool en,
  }) => Variables$Query$EquipmentInspectionRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$EquipmentInspectionRead._(this._$data);

  factory Variables$Query$EquipmentInspectionRead.fromJson(
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
          : Input$MstrInspectionCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrInspectionsOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$EquipmentInspectionRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrInspectionCondition? get condition =>
      (_$data['condition'] as Input$MstrInspectionCondition?);

  List<Enum$MstrInspectionsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrInspectionsOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrInspectionsOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$EquipmentInspectionRead<
    Variables$Query$EquipmentInspectionRead
  >
  get copyWith =>
      CopyWith$Variables$Query$EquipmentInspectionRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$EquipmentInspectionRead ||
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

abstract class CopyWith$Variables$Query$EquipmentInspectionRead<TRes> {
  factory CopyWith$Variables$Query$EquipmentInspectionRead(
    Variables$Query$EquipmentInspectionRead instance,
    TRes Function(Variables$Query$EquipmentInspectionRead) then,
  ) = _CopyWithImpl$Variables$Query$EquipmentInspectionRead;

  factory CopyWith$Variables$Query$EquipmentInspectionRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$EquipmentInspectionRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrInspectionCondition? condition,
    List<Enum$MstrInspectionsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  });
}

class _CopyWithImpl$Variables$Query$EquipmentInspectionRead<TRes>
    implements CopyWith$Variables$Query$EquipmentInspectionRead<TRes> {
  _CopyWithImpl$Variables$Query$EquipmentInspectionRead(
    this._instance,
    this._then,
  );

  final Variables$Query$EquipmentInspectionRead _instance;

  final TRes Function(Variables$Query$EquipmentInspectionRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$EquipmentInspectionRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrInspectionCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrInspectionsOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$EquipmentInspectionRead<TRes>
    implements CopyWith$Variables$Query$EquipmentInspectionRead<TRes> {
  _CopyWithStubImpl$Variables$Query$EquipmentInspectionRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrInspectionCondition? condition,
    List<Enum$MstrInspectionsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  }) => _res;
}

class Query$EquipmentInspectionRead {
  Query$EquipmentInspectionRead({
    this.allMstrInspections,
    this.$__typename = 'Query',
  });

  factory Query$EquipmentInspectionRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrInspections = json['allMstrInspections'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead(
      allMstrInspections: l$allMstrInspections == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections.fromJson(
              (l$allMstrInspections as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionRead$allMstrInspections? allMstrInspections;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrInspections = allMstrInspections;
    _resultData['allMstrInspections'] = l$allMstrInspections?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrInspections = allMstrInspections;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrInspections, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$EquipmentInspectionRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrInspections = allMstrInspections;
    final lOther$allMstrInspections = other.allMstrInspections;
    if (l$allMstrInspections != lOther$allMstrInspections) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$EquipmentInspectionRead
    on Query$EquipmentInspectionRead {
  CopyWith$Query$EquipmentInspectionRead<Query$EquipmentInspectionRead>
  get copyWith => CopyWith$Query$EquipmentInspectionRead(this, (i) => i);
}

abstract class CopyWith$Query$EquipmentInspectionRead<TRes> {
  factory CopyWith$Query$EquipmentInspectionRead(
    Query$EquipmentInspectionRead instance,
    TRes Function(Query$EquipmentInspectionRead) then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead;

  factory CopyWith$Query$EquipmentInspectionRead.stub(TRes res) =
      _CopyWithStubImpl$Query$EquipmentInspectionRead;

  TRes call({
    Query$EquipmentInspectionRead$allMstrInspections? allMstrInspections,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections<TRes>
  get allMstrInspections;
}

class _CopyWithImpl$Query$EquipmentInspectionRead<TRes>
    implements CopyWith$Query$EquipmentInspectionRead<TRes> {
  _CopyWithImpl$Query$EquipmentInspectionRead(this._instance, this._then);

  final Query$EquipmentInspectionRead _instance;

  final TRes Function(Query$EquipmentInspectionRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrInspections = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead(
      allMstrInspections: allMstrInspections == _undefined
          ? _instance.allMstrInspections
          : (allMstrInspections
                as Query$EquipmentInspectionRead$allMstrInspections?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections<TRes>
  get allMstrInspections {
    final local$allMstrInspections = _instance.allMstrInspections;
    return local$allMstrInspections == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections(
            local$allMstrInspections,
            (e) => call(allMstrInspections: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead<TRes>
    implements CopyWith$Query$EquipmentInspectionRead<TRes> {
  _CopyWithStubImpl$Query$EquipmentInspectionRead(this._res);

  TRes _res;

  call({
    Query$EquipmentInspectionRead$allMstrInspections? allMstrInspections,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections<TRes>
  get allMstrInspections =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections.stub(_res);
}

const documentNodeQueryEquipmentInspectionRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'EquipmentInspectionRead'),
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
            name: NameNode(value: 'MstrInspectionCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrInspectionsOrderBy'),
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
            name: NameNode(value: 'allMstrInspections'),
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
                        name: NameNode(value: 'inspectionKind'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'baseDate'),
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
                        name: NameNode(value: 'externalInspection'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'inspectionFormulaId'),
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
                          value: 'mstrInspectionKindByInspectionKind',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrInspectionKindId'),
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
                          value: 'mstrInspectionFormulaByInspectionFormulaId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrInspectionFormulaId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'formulaClass'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'argClass'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'typeClass'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'formatClass'),
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
Query$EquipmentInspectionRead _parserFn$Query$EquipmentInspectionRead(
  Map<String, dynamic> data,
) => Query$EquipmentInspectionRead.fromJson(data);
typedef OnQueryComplete$Query$EquipmentInspectionRead =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$EquipmentInspectionRead?,
    );

class Options$Query$EquipmentInspectionRead
    extends graphql.QueryOptions<Query$EquipmentInspectionRead> {
  Options$Query$EquipmentInspectionRead({
    String? operationName,
    required Variables$Query$EquipmentInspectionRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$EquipmentInspectionRead? onComplete,
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
                     : _parserFn$Query$EquipmentInspectionRead(data),
               ),
         onError: onError,
         document: documentNodeQueryEquipmentInspectionRead,
         parserFn: _parserFn$Query$EquipmentInspectionRead,
       );

  final OnQueryComplete$Query$EquipmentInspectionRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$EquipmentInspectionRead
    extends graphql.WatchQueryOptions<Query$EquipmentInspectionRead> {
  WatchOptions$Query$EquipmentInspectionRead({
    String? operationName,
    required Variables$Query$EquipmentInspectionRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionRead? typedOptimisticResult,
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
         document: documentNodeQueryEquipmentInspectionRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$EquipmentInspectionRead,
       );
}

class FetchMoreOptions$Query$EquipmentInspectionRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$EquipmentInspectionRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$EquipmentInspectionRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryEquipmentInspectionRead,
       );
}

extension ClientExtension$Query$EquipmentInspectionRead
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$EquipmentInspectionRead>>
  query$EquipmentInspectionRead(
    Options$Query$EquipmentInspectionRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$EquipmentInspectionRead>
  watchQuery$EquipmentInspectionRead(
    WatchOptions$Query$EquipmentInspectionRead options,
  ) => this.watchQuery(options);

  void writeQuery$EquipmentInspectionRead({
    required Query$EquipmentInspectionRead data,
    required Variables$Query$EquipmentInspectionRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryEquipmentInspectionRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$EquipmentInspectionRead? readQuery$EquipmentInspectionRead({
    required Variables$Query$EquipmentInspectionRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryEquipmentInspectionRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$EquipmentInspectionRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$EquipmentInspectionRead>
useQuery$EquipmentInspectionRead(
  Options$Query$EquipmentInspectionRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$EquipmentInspectionRead>
useWatchQuery$EquipmentInspectionRead(
  WatchOptions$Query$EquipmentInspectionRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$EquipmentInspectionRead$Widget
    extends graphql_flutter.Query<Query$EquipmentInspectionRead> {
  Query$EquipmentInspectionRead$Widget({
    widgets.Key? key,
    required Options$Query$EquipmentInspectionRead options,
    required graphql_flutter.QueryBuilder<Query$EquipmentInspectionRead>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$EquipmentInspectionRead$allMstrInspections {
  Query$EquipmentInspectionRead$allMstrInspections({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrInspectionsConnection',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$EquipmentInspectionRead$allMstrInspections$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$EquipmentInspectionRead$allMstrInspections$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$EquipmentInspectionRead$allMstrInspections$pageInfo pageInfo;

  final List<Query$EquipmentInspectionRead$allMstrInspections$nodes?> nodes;

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
    if (other is! Query$EquipmentInspectionRead$allMstrInspections ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections
    on Query$EquipmentInspectionRead$allMstrInspections {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections<
    Query$EquipmentInspectionRead$allMstrInspections
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections(this, (i) => i);
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections<TRes> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections(
    Query$EquipmentInspectionRead$allMstrInspections instance,
    TRes Function(Query$EquipmentInspectionRead$allMstrInspections) then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections;

  TRes call({
    int? totalCount,
    Query$EquipmentInspectionRead$allMstrInspections$pageInfo? pageInfo,
    List<Query$EquipmentInspectionRead$allMstrInspections$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$EquipmentInspectionRead$allMstrInspections$nodes?> Function(
      Iterable<
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes<
          Query$EquipmentInspectionRead$allMstrInspections$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections<TRes>
    implements CopyWith$Query$EquipmentInspectionRead$allMstrInspections<TRes> {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections _instance;

  final TRes Function(Query$EquipmentInspectionRead$allMstrInspections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$EquipmentInspectionRead$allMstrInspections$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$EquipmentInspectionRead$allMstrInspections$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$EquipmentInspectionRead$allMstrInspections$nodes?> Function(
      Iterable<
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes<
          Query$EquipmentInspectionRead$allMstrInspections$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections<TRes>
    implements CopyWith$Query$EquipmentInspectionRead$allMstrInspections<TRes> {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$EquipmentInspectionRead$allMstrInspections$pageInfo? pageInfo,
    List<Query$EquipmentInspectionRead$allMstrInspections$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$pageInfo {
  Query$EquipmentInspectionRead$allMstrInspections$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$pageInfo(
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
    if (other is! Query$EquipmentInspectionRead$allMstrInspections$pageInfo ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$pageInfo
    on Query$EquipmentInspectionRead$allMstrInspections$pageInfo {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo<
    Query$EquipmentInspectionRead$allMstrInspections$pageInfo
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo(
    Query$EquipmentInspectionRead$allMstrInspections$pageInfo instance,
    TRes Function(Query$EquipmentInspectionRead$allMstrInspections$pageInfo)
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$pageInfo;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$pageInfo<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$pageInfo(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$pageInfo _instance;

  final TRes Function(Query$EquipmentInspectionRead$allMstrInspections$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$pageInfo(
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

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$pageInfo<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes {
  Query$EquipmentInspectionRead$allMstrInspections$nodes({
    required this.mstrInspectionId,
    required this.code,
    required this.inspectionKind,
    this.baseDate,
    this.timeInterval,
    this.externalInspection,
    this.inspectionFormulaId,
    required this.mstrItemId,
    this.remarks,
    this.updateAt,
    this.remove,
    this.mstrStakeholderByExternalInspection,
    this.mstrInspectionKindByInspectionKind,
    this.mstrItemByMstrItemId,
    this.mstrInspectionFormulaByInspectionFormulaId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrInspection',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionId = json['mstrInspectionId'];
    final l$code = json['code'];
    final l$inspectionKind = json['inspectionKind'];
    final l$baseDate = json['baseDate'];
    final l$timeInterval = json['timeInterval'];
    final l$externalInspection = json['externalInspection'];
    final l$inspectionFormulaId = json['inspectionFormulaId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$mstrStakeholderByExternalInspection =
        json['mstrStakeholderByExternalInspection'];
    final l$mstrInspectionKindByInspectionKind =
        json['mstrInspectionKindByInspectionKind'];
    final l$mstrItemByMstrItemId = json['mstrItemByMstrItemId'];
    final l$mstrInspectionFormulaByInspectionFormulaId =
        json['mstrInspectionFormulaByInspectionFormulaId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes(
      mstrInspectionId: (l$mstrInspectionId as String),
      code: (l$code as String),
      inspectionKind: (l$inspectionKind as String),
      baseDate: (l$baseDate as String?),
      timeInterval: l$timeInterval == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval.fromJson(
              (l$timeInterval as Map<String, dynamic>),
            ),
      externalInspection: (l$externalInspection as String?),
      inspectionFormulaId: (l$inspectionFormulaId as String?),
      mstrItemId: (l$mstrItemId as String),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      mstrStakeholderByExternalInspection:
          l$mstrStakeholderByExternalInspection == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection.fromJson(
              (l$mstrStakeholderByExternalInspection as Map<String, dynamic>),
            ),
      mstrInspectionKindByInspectionKind:
          l$mstrInspectionKindByInspectionKind == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind.fromJson(
              (l$mstrInspectionKindByInspectionKind as Map<String, dynamic>),
            ),
      mstrItemByMstrItemId: l$mstrItemByMstrItemId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId.fromJson(
              (l$mstrItemByMstrItemId as Map<String, dynamic>),
            ),
      mstrInspectionFormulaByInspectionFormulaId:
          l$mstrInspectionFormulaByInspectionFormulaId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId.fromJson(
              (l$mstrInspectionFormulaByInspectionFormulaId
                  as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionId;

  final String code;

  final String inspectionKind;

  final String? baseDate;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval?
  timeInterval;

  final String? externalInspection;

  final String? inspectionFormulaId;

  final String mstrItemId;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection?
  mstrStakeholderByExternalInspection;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind?
  mstrInspectionKindByInspectionKind;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId?
  mstrItemByMstrItemId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId?
  mstrInspectionFormulaByInspectionFormulaId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionId = mstrInspectionId;
    _resultData['mstrInspectionId'] = l$mstrInspectionId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$inspectionKind = inspectionKind;
    _resultData['inspectionKind'] = l$inspectionKind;
    final l$baseDate = baseDate;
    _resultData['baseDate'] = l$baseDate;
    final l$timeInterval = timeInterval;
    _resultData['timeInterval'] = l$timeInterval?.toJson();
    final l$externalInspection = externalInspection;
    _resultData['externalInspection'] = l$externalInspection;
    final l$inspectionFormulaId = inspectionFormulaId;
    _resultData['inspectionFormulaId'] = l$inspectionFormulaId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$mstrStakeholderByExternalInspection =
        mstrStakeholderByExternalInspection;
    _resultData['mstrStakeholderByExternalInspection'] =
        l$mstrStakeholderByExternalInspection?.toJson();
    final l$mstrInspectionKindByInspectionKind =
        mstrInspectionKindByInspectionKind;
    _resultData['mstrInspectionKindByInspectionKind'] =
        l$mstrInspectionKindByInspectionKind?.toJson();
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    _resultData['mstrItemByMstrItemId'] = l$mstrItemByMstrItemId?.toJson();
    final l$mstrInspectionFormulaByInspectionFormulaId =
        mstrInspectionFormulaByInspectionFormulaId;
    _resultData['mstrInspectionFormulaByInspectionFormulaId'] =
        l$mstrInspectionFormulaByInspectionFormulaId?.toJson();
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
    final l$mstrInspectionId = mstrInspectionId;
    final l$code = code;
    final l$inspectionKind = inspectionKind;
    final l$baseDate = baseDate;
    final l$timeInterval = timeInterval;
    final l$externalInspection = externalInspection;
    final l$inspectionFormulaId = inspectionFormulaId;
    final l$mstrItemId = mstrItemId;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$mstrStakeholderByExternalInspection =
        mstrStakeholderByExternalInspection;
    final l$mstrInspectionKindByInspectionKind =
        mstrInspectionKindByInspectionKind;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final l$mstrInspectionFormulaByInspectionFormulaId =
        mstrInspectionFormulaByInspectionFormulaId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionId,
      l$code,
      l$inspectionKind,
      l$baseDate,
      l$timeInterval,
      l$externalInspection,
      l$inspectionFormulaId,
      l$mstrItemId,
      l$remarks,
      l$updateAt,
      l$remove,
      l$mstrStakeholderByExternalInspection,
      l$mstrInspectionKindByInspectionKind,
      l$mstrItemByMstrItemId,
      l$mstrInspectionFormulaByInspectionFormulaId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$EquipmentInspectionRead$allMstrInspections$nodes ||
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
    final l$inspectionKind = inspectionKind;
    final lOther$inspectionKind = other.inspectionKind;
    if (l$inspectionKind != lOther$inspectionKind) {
      return false;
    }
    final l$baseDate = baseDate;
    final lOther$baseDate = other.baseDate;
    if (l$baseDate != lOther$baseDate) {
      return false;
    }
    final l$timeInterval = timeInterval;
    final lOther$timeInterval = other.timeInterval;
    if (l$timeInterval != lOther$timeInterval) {
      return false;
    }
    final l$externalInspection = externalInspection;
    final lOther$externalInspection = other.externalInspection;
    if (l$externalInspection != lOther$externalInspection) {
      return false;
    }
    final l$inspectionFormulaId = inspectionFormulaId;
    final lOther$inspectionFormulaId = other.inspectionFormulaId;
    if (l$inspectionFormulaId != lOther$inspectionFormulaId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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
    final l$mstrStakeholderByExternalInspection =
        mstrStakeholderByExternalInspection;
    final lOther$mstrStakeholderByExternalInspection =
        other.mstrStakeholderByExternalInspection;
    if (l$mstrStakeholderByExternalInspection !=
        lOther$mstrStakeholderByExternalInspection) {
      return false;
    }
    final l$mstrInspectionKindByInspectionKind =
        mstrInspectionKindByInspectionKind;
    final lOther$mstrInspectionKindByInspectionKind =
        other.mstrInspectionKindByInspectionKind;
    if (l$mstrInspectionKindByInspectionKind !=
        lOther$mstrInspectionKindByInspectionKind) {
      return false;
    }
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final lOther$mstrItemByMstrItemId = other.mstrItemByMstrItemId;
    if (l$mstrItemByMstrItemId != lOther$mstrItemByMstrItemId) {
      return false;
    }
    final l$mstrInspectionFormulaByInspectionFormulaId =
        mstrInspectionFormulaByInspectionFormulaId;
    final lOther$mstrInspectionFormulaByInspectionFormulaId =
        other.mstrInspectionFormulaByInspectionFormulaId;
    if (l$mstrInspectionFormulaByInspectionFormulaId !=
        lOther$mstrInspectionFormulaByInspectionFormulaId) {
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes
    on Query$EquipmentInspectionRead$allMstrInspections$nodes {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes<
    Query$EquipmentInspectionRead$allMstrInspections$nodes
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes(
    Query$EquipmentInspectionRead$allMstrInspections$nodes instance,
    TRes Function(Query$EquipmentInspectionRead$allMstrInspections$nodes) then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes;

  TRes call({
    String? mstrInspectionId,
    String? code,
    String? inspectionKind,
    String? baseDate,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval?
    timeInterval,
    String? externalInspection,
    String? inspectionFormulaId,
    String? mstrItemId,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection?
    mstrStakeholderByExternalInspection,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind?
    mstrInspectionKindByInspectionKind,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId?
    mstrInspectionFormulaByInspectionFormulaId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval<
    TRes
  >
  get timeInterval;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection<
    TRes
  >
  get mstrStakeholderByExternalInspection;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind<
    TRes
  >
  get mstrInspectionKindByInspectionKind;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId<
    TRes
  >
  get mstrInspectionFormulaByInspectionFormulaId;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes<TRes>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes<TRes> {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes _instance;

  final TRes Function(Query$EquipmentInspectionRead$allMstrInspections$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionId = _undefined,
    Object? code = _undefined,
    Object? inspectionKind = _undefined,
    Object? baseDate = _undefined,
    Object? timeInterval = _undefined,
    Object? externalInspection = _undefined,
    Object? inspectionFormulaId = _undefined,
    Object? mstrItemId = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? mstrStakeholderByExternalInspection = _undefined,
    Object? mstrInspectionKindByInspectionKind = _undefined,
    Object? mstrItemByMstrItemId = _undefined,
    Object? mstrInspectionFormulaByInspectionFormulaId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes(
      mstrInspectionId:
          mstrInspectionId == _undefined || mstrInspectionId == null
          ? _instance.mstrInspectionId
          : (mstrInspectionId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      inspectionKind: inspectionKind == _undefined || inspectionKind == null
          ? _instance.inspectionKind
          : (inspectionKind as String),
      baseDate: baseDate == _undefined
          ? _instance.baseDate
          : (baseDate as String?),
      timeInterval: timeInterval == _undefined
          ? _instance.timeInterval
          : (timeInterval
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval?),
      externalInspection: externalInspection == _undefined
          ? _instance.externalInspection
          : (externalInspection as String?),
      inspectionFormulaId: inspectionFormulaId == _undefined
          ? _instance.inspectionFormulaId
          : (inspectionFormulaId as String?),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      mstrStakeholderByExternalInspection:
          mstrStakeholderByExternalInspection == _undefined
          ? _instance.mstrStakeholderByExternalInspection
          : (mstrStakeholderByExternalInspection
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection?),
      mstrInspectionKindByInspectionKind:
          mstrInspectionKindByInspectionKind == _undefined
          ? _instance.mstrInspectionKindByInspectionKind
          : (mstrInspectionKindByInspectionKind
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind?),
      mstrItemByMstrItemId: mstrItemByMstrItemId == _undefined
          ? _instance.mstrItemByMstrItemId
          : (mstrItemByMstrItemId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId?),
      mstrInspectionFormulaByInspectionFormulaId:
          mstrInspectionFormulaByInspectionFormulaId == _undefined
          ? _instance.mstrInspectionFormulaByInspectionFormulaId
          : (mstrInspectionFormulaByInspectionFormulaId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval<
    TRes
  >
  get timeInterval {
    final local$timeInterval = _instance.timeInterval;
    return local$timeInterval == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval(
            local$timeInterval,
            (e) => call(timeInterval: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection<
    TRes
  >
  get mstrStakeholderByExternalInspection {
    final local$mstrStakeholderByExternalInspection =
        _instance.mstrStakeholderByExternalInspection;
    return local$mstrStakeholderByExternalInspection == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection(
            local$mstrStakeholderByExternalInspection,
            (e) => call(mstrStakeholderByExternalInspection: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind<
    TRes
  >
  get mstrInspectionKindByInspectionKind {
    final local$mstrInspectionKindByInspectionKind =
        _instance.mstrInspectionKindByInspectionKind;
    return local$mstrInspectionKindByInspectionKind == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind(
            local$mstrInspectionKindByInspectionKind,
            (e) => call(mstrInspectionKindByInspectionKind: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId {
    final local$mstrItemByMstrItemId = _instance.mstrItemByMstrItemId;
    return local$mstrItemByMstrItemId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId(
            local$mstrItemByMstrItemId,
            (e) => call(mstrItemByMstrItemId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId<
    TRes
  >
  get mstrInspectionFormulaByInspectionFormulaId {
    final local$mstrInspectionFormulaByInspectionFormulaId =
        _instance.mstrInspectionFormulaByInspectionFormulaId;
    return local$mstrInspectionFormulaByInspectionFormulaId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId(
            local$mstrInspectionFormulaByInspectionFormulaId,
            (e) => call(mstrInspectionFormulaByInspectionFormulaId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes<TRes> {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionId,
    String? code,
    String? inspectionKind,
    String? baseDate,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval?
    timeInterval,
    String? externalInspection,
    String? inspectionFormulaId,
    String? mstrItemId,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection?
    mstrStakeholderByExternalInspection,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind?
    mstrInspectionKindByInspectionKind,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId?
    mstrInspectionFormulaByInspectionFormulaId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval<
    TRes
  >
  get timeInterval =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection<
    TRes
  >
  get mstrStakeholderByExternalInspection =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind<
    TRes
  >
  get mstrInspectionKindByInspectionKind =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId<
    TRes
  >
  get mstrInspectionFormulaByInspectionFormulaId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval
    on Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval;

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

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval,
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
    Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval(
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

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$timeInterval(
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

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection({
    required this.mstrStakeholderId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrStakeholder',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection(
      mstrStakeholderId: (l$mstrStakeholderId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
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
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderId,
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection;

  TRes call({
    String? mstrStakeholderId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection(
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStakeholderId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind({
    required this.mstrInspectionKindId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrInspectionKind',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionKindId = json['mstrInspectionKindId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind(
      mstrInspectionKindId: (l$mstrInspectionKindId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionKindId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionKindId = mstrInspectionKindId;
    _resultData['mstrInspectionKindId'] = l$mstrInspectionKindId;
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
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionKindId,
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionKindId = mstrInspectionKindId;
    final lOther$mstrInspectionKindId = other.mstrInspectionKindId;
    if (l$mstrInspectionKindId != lOther$mstrInspectionKindId) {
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind;

  TRes call({
    String? mstrInspectionKindId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionKindId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind(
      mstrInspectionKindId:
          mstrInspectionKindId == _undefined || mstrInspectionKindId == null
          ? _instance.mstrInspectionKindId
          : (mstrInspectionKindId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionKindId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionKindByInspectionKind$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId({
    required this.mstrItemId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItem',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId(
      mstrItemId: (l$mstrItemId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
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
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId
    on Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId;

  TRes call({
    String? mstrItemId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId({
    required this.mstrInspectionFormulaId,
    this.formulaClass,
    this.argClass,
    this.typeClass,
    this.formatClass,
    this.$__typename = 'MstrInspectionFormula',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionFormulaId = json['mstrInspectionFormulaId'];
    final l$formulaClass = json['formulaClass'];
    final l$argClass = json['argClass'];
    final l$typeClass = json['typeClass'];
    final l$formatClass = json['formatClass'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId(
      mstrInspectionFormulaId: (l$mstrInspectionFormulaId as String),
      formulaClass: (l$formulaClass as int?),
      argClass: (l$argClass as String?),
      typeClass: (l$typeClass as int?),
      formatClass: (l$formatClass as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionFormulaId;

  final int? formulaClass;

  final String? argClass;

  final int? typeClass;

  final String? formatClass;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionFormulaId = mstrInspectionFormulaId;
    _resultData['mstrInspectionFormulaId'] = l$mstrInspectionFormulaId;
    final l$formulaClass = formulaClass;
    _resultData['formulaClass'] = l$formulaClass;
    final l$argClass = argClass;
    _resultData['argClass'] = l$argClass;
    final l$typeClass = typeClass;
    _resultData['typeClass'] = l$typeClass;
    final l$formatClass = formatClass;
    _resultData['formatClass'] = l$formatClass;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionFormulaId = mstrInspectionFormulaId;
    final l$formulaClass = formulaClass;
    final l$argClass = argClass;
    final l$typeClass = typeClass;
    final l$formatClass = formatClass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionFormulaId,
      l$formulaClass,
      l$argClass,
      l$typeClass,
      l$formatClass,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionFormulaId = mstrInspectionFormulaId;
    final lOther$mstrInspectionFormulaId = other.mstrInspectionFormulaId;
    if (l$mstrInspectionFormulaId != lOther$mstrInspectionFormulaId) {
      return false;
    }
    final l$formulaClass = formulaClass;
    final lOther$formulaClass = other.formulaClass;
    if (l$formulaClass != lOther$formulaClass) {
      return false;
    }
    final l$argClass = argClass;
    final lOther$argClass = other.argClass;
    if (l$argClass != lOther$argClass) {
      return false;
    }
    final l$typeClass = typeClass;
    final lOther$typeClass = other.typeClass;
    if (l$typeClass != lOther$typeClass) {
      return false;
    }
    final l$formatClass = formatClass;
    final lOther$formatClass = other.formatClass;
    if (l$formatClass != lOther$formatClass) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId;

  TRes call({
    String? mstrInspectionFormulaId,
    int? formulaClass,
    String? argClass,
    int? typeClass,
    String? formatClass,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionFormulaId = _undefined,
    Object? formulaClass = _undefined,
    Object? argClass = _undefined,
    Object? typeClass = _undefined,
    Object? formatClass = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId(
      mstrInspectionFormulaId:
          mstrInspectionFormulaId == _undefined ||
              mstrInspectionFormulaId == null
          ? _instance.mstrInspectionFormulaId
          : (mstrInspectionFormulaId as String),
      formulaClass: formulaClass == _undefined
          ? _instance.formulaClass
          : (formulaClass as int?),
      argClass: argClass == _undefined
          ? _instance.argClass
          : (argClass as String?),
      typeClass: typeClass == _undefined
          ? _instance.typeClass
          : (typeClass as int?),
      formatClass: formatClass == _undefined
          ? _instance.formatClass
          : (formatClass as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$mstrInspectionFormulaByInspectionFormulaId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionFormulaId,
    int? formulaClass,
    String? argClass,
    int? typeClass,
    String? formatClass,
    String? $__typename,
  }) => _res;
}

class Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionRead$allMstrInspections$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$EquipmentInspectionReadUpdaterAppellation {
  factory Variables$Query$EquipmentInspectionReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$EquipmentInspectionReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$EquipmentInspectionReadUpdaterAppellation._(this._$data);

  factory Variables$Query$EquipmentInspectionReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$EquipmentInspectionReadUpdaterAppellation._(
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

  CopyWith$Variables$Query$EquipmentInspectionReadUpdaterAppellation<
    Variables$Query$EquipmentInspectionReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$EquipmentInspectionReadUpdaterAppellation(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$EquipmentInspectionReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$EquipmentInspectionReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$EquipmentInspectionReadUpdaterAppellation(
    Variables$Query$EquipmentInspectionReadUpdaterAppellation instance,
    TRes Function(Variables$Query$EquipmentInspectionReadUpdaterAppellation)
    then,
  ) = _CopyWithImpl$Variables$Query$EquipmentInspectionReadUpdaterAppellation;

  factory CopyWith$Variables$Query$EquipmentInspectionReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$EquipmentInspectionReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$EquipmentInspectionReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$EquipmentInspectionReadUpdaterAppellation<
          TRes
        > {
  _CopyWithImpl$Variables$Query$EquipmentInspectionReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$EquipmentInspectionReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$EquipmentInspectionReadUpdaterAppellation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$EquipmentInspectionReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$EquipmentInspectionReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$EquipmentInspectionReadUpdaterAppellation<
          TRes
        > {
  _CopyWithStubImpl$Variables$Query$EquipmentInspectionReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$EquipmentInspectionReadUpdaterAppellation {
  Query$EquipmentInspectionReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$EquipmentInspectionReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$EquipmentInspectionReadUpdaterAppellation ||
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

extension UtilityExtension$Query$EquipmentInspectionReadUpdaterAppellation
    on Query$EquipmentInspectionReadUpdaterAppellation {
  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation<
    Query$EquipmentInspectionReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$EquipmentInspectionReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$EquipmentInspectionReadUpdaterAppellation(
    Query$EquipmentInspectionReadUpdaterAppellation instance,
    TRes Function(Query$EquipmentInspectionReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation;

  factory CopyWith$Query$EquipmentInspectionReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation;

  TRes call({
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation<TRes>
    implements CopyWith$Query$EquipmentInspectionReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionReadUpdaterAppellation _instance;

  final TRes Function(Query$EquipmentInspectionReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation<TRes>
    implements CopyWith$Query$EquipmentInspectionReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryEquipmentInspectionReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'EquipmentInspectionReadUpdaterAppellation'),
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
Query$EquipmentInspectionReadUpdaterAppellation
_parserFn$Query$EquipmentInspectionReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$EquipmentInspectionReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$EquipmentInspectionReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$EquipmentInspectionReadUpdaterAppellation?,
    );

class Options$Query$EquipmentInspectionReadUpdaterAppellation
    extends
        graphql.QueryOptions<Query$EquipmentInspectionReadUpdaterAppellation> {
  Options$Query$EquipmentInspectionReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$EquipmentInspectionReadUpdaterAppellation
    variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$EquipmentInspectionReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$EquipmentInspectionReadUpdaterAppellation(
                         data,
                       ),
               ),
         onError: onError,
         document: documentNodeQueryEquipmentInspectionReadUpdaterAppellation,
         parserFn: _parserFn$Query$EquipmentInspectionReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$EquipmentInspectionReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$EquipmentInspectionReadUpdaterAppellation
    extends
        graphql.WatchQueryOptions<
          Query$EquipmentInspectionReadUpdaterAppellation
        > {
  WatchOptions$Query$EquipmentInspectionReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$EquipmentInspectionReadUpdaterAppellation
    variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryEquipmentInspectionReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$EquipmentInspectionReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$EquipmentInspectionReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$EquipmentInspectionReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$EquipmentInspectionReadUpdaterAppellation
    variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryEquipmentInspectionReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$EquipmentInspectionReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$EquipmentInspectionReadUpdaterAppellation>>
  query$EquipmentInspectionReadUpdaterAppellation(
    Options$Query$EquipmentInspectionReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$EquipmentInspectionReadUpdaterAppellation>
  watchQuery$EquipmentInspectionReadUpdaterAppellation(
    WatchOptions$Query$EquipmentInspectionReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$EquipmentInspectionReadUpdaterAppellation({
    required Query$EquipmentInspectionReadUpdaterAppellation data,
    required Variables$Query$EquipmentInspectionReadUpdaterAppellation
    variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryEquipmentInspectionReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$EquipmentInspectionReadUpdaterAppellation?
  readQuery$EquipmentInspectionReadUpdaterAppellation({
    required Variables$Query$EquipmentInspectionReadUpdaterAppellation
    variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryEquipmentInspectionReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$EquipmentInspectionReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$EquipmentInspectionReadUpdaterAppellation>
useQuery$EquipmentInspectionReadUpdaterAppellation(
  Options$Query$EquipmentInspectionReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$EquipmentInspectionReadUpdaterAppellation>
useWatchQuery$EquipmentInspectionReadUpdaterAppellation(
  WatchOptions$Query$EquipmentInspectionReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$EquipmentInspectionReadUpdaterAppellation$Widget
    extends
        graphql_flutter.Query<Query$EquipmentInspectionReadUpdaterAppellation> {
  Query$EquipmentInspectionReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$EquipmentInspectionReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<
      Query$EquipmentInspectionReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
