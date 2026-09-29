import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$LicensePageRfe {
  factory Variables$Query$LicensePageRfe({
    required String mstrLicenseId,
    required bool ja,
    required bool en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => Variables$Query$LicensePageRfe._({
    r'mstrLicenseId': mstrLicenseId,
    r'ja': ja,
    r'en': en,
    if (jaLanguageCodeId != null) r'jaLanguageCodeId': jaLanguageCodeId,
    if (enLanguageCodeId != null) r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$LicensePageRfe._(this._$data);

  factory Variables$Query$LicensePageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrLicenseId = data['mstrLicenseId'];
    result$data['mstrLicenseId'] = (l$mstrLicenseId as String);
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    if (data.containsKey('jaLanguageCodeId')) {
      final l$jaLanguageCodeId = data['jaLanguageCodeId'];
      result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String?);
    }
    if (data.containsKey('enLanguageCodeId')) {
      final l$enLanguageCodeId = data['enLanguageCodeId'];
      result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String?);
    }
    return Variables$Query$LicensePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrLicenseId => (_$data['mstrLicenseId'] as String);

  bool get ja => (_$data['ja'] as bool);

  bool get en => (_$data['en'] as bool);

  String? get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String?);

  String? get enLanguageCodeId => (_$data['enLanguageCodeId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrLicenseId = mstrLicenseId;
    result$data['mstrLicenseId'] = l$mstrLicenseId;
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    if (_$data.containsKey('jaLanguageCodeId')) {
      final l$jaLanguageCodeId = jaLanguageCodeId;
      result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    }
    if (_$data.containsKey('enLanguageCodeId')) {
      final l$enLanguageCodeId = enLanguageCodeId;
      result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$LicensePageRfe<Variables$Query$LicensePageRfe>
  get copyWith => CopyWith$Variables$Query$LicensePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LicensePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLicenseId = mstrLicenseId;
    final lOther$mstrLicenseId = other.mstrLicenseId;
    if (l$mstrLicenseId != lOther$mstrLicenseId) {
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
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final lOther$jaLanguageCodeId = other.jaLanguageCodeId;
    if (_$data.containsKey('jaLanguageCodeId') !=
        other._$data.containsKey('jaLanguageCodeId')) {
      return false;
    }
    if (l$jaLanguageCodeId != lOther$jaLanguageCodeId) {
      return false;
    }
    final l$enLanguageCodeId = enLanguageCodeId;
    final lOther$enLanguageCodeId = other.enLanguageCodeId;
    if (_$data.containsKey('enLanguageCodeId') !=
        other._$data.containsKey('enLanguageCodeId')) {
      return false;
    }
    if (l$enLanguageCodeId != lOther$enLanguageCodeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrLicenseId = mstrLicenseId;
    final l$ja = ja;
    final l$en = en;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrLicenseId,
      l$ja,
      l$en,
      _$data.containsKey('jaLanguageCodeId') ? l$jaLanguageCodeId : const {},
      _$data.containsKey('enLanguageCodeId') ? l$enLanguageCodeId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$LicensePageRfe<TRes> {
  factory CopyWith$Variables$Query$LicensePageRfe(
    Variables$Query$LicensePageRfe instance,
    TRes Function(Variables$Query$LicensePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$LicensePageRfe;

  factory CopyWith$Variables$Query$LicensePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LicensePageRfe;

  TRes call({
    String? mstrLicenseId,
    bool? ja,
    bool? en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$LicensePageRfe<TRes>
    implements CopyWith$Variables$Query$LicensePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$LicensePageRfe(this._instance, this._then);

  final Variables$Query$LicensePageRfe _instance;

  final TRes Function(Variables$Query$LicensePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLicenseId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$LicensePageRfe._({
      ..._instance._$data,
      if (mstrLicenseId != _undefined && mstrLicenseId != null)
        'mstrLicenseId': (mstrLicenseId as String),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (jaLanguageCodeId != _undefined)
        'jaLanguageCodeId': (jaLanguageCodeId as String?),
      if (enLanguageCodeId != _undefined)
        'enLanguageCodeId': (enLanguageCodeId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LicensePageRfe<TRes>
    implements CopyWith$Variables$Query$LicensePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$LicensePageRfe(this._res);

  TRes _res;

  call({
    String? mstrLicenseId,
    bool? ja,
    bool? en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$LicensePageRfe {
  Query$LicensePageRfe({
    this.mstrLicenseByMstrLicenseId,
    this.$__typename = 'Query',
  });

  factory Query$LicensePageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrLicenseByMstrLicenseId = json['mstrLicenseByMstrLicenseId'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe(
      mstrLicenseByMstrLicenseId: l$mstrLicenseByMstrLicenseId == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId.fromJson(
              (l$mstrLicenseByMstrLicenseId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId?
  mstrLicenseByMstrLicenseId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLicenseByMstrLicenseId = mstrLicenseByMstrLicenseId;
    _resultData['mstrLicenseByMstrLicenseId'] = l$mstrLicenseByMstrLicenseId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrLicenseByMstrLicenseId = mstrLicenseByMstrLicenseId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrLicenseByMstrLicenseId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LicensePageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLicenseByMstrLicenseId = mstrLicenseByMstrLicenseId;
    final lOther$mstrLicenseByMstrLicenseId = other.mstrLicenseByMstrLicenseId;
    if (l$mstrLicenseByMstrLicenseId != lOther$mstrLicenseByMstrLicenseId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LicensePageRfe on Query$LicensePageRfe {
  CopyWith$Query$LicensePageRfe<Query$LicensePageRfe> get copyWith =>
      CopyWith$Query$LicensePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$LicensePageRfe<TRes> {
  factory CopyWith$Query$LicensePageRfe(
    Query$LicensePageRfe instance,
    TRes Function(Query$LicensePageRfe) then,
  ) = _CopyWithImpl$Query$LicensePageRfe;

  factory CopyWith$Query$LicensePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$LicensePageRfe;

  TRes call({
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId? mstrLicenseByMstrLicenseId,
    String? $__typename,
  });
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId<TRes>
  get mstrLicenseByMstrLicenseId;
}

class _CopyWithImpl$Query$LicensePageRfe<TRes>
    implements CopyWith$Query$LicensePageRfe<TRes> {
  _CopyWithImpl$Query$LicensePageRfe(this._instance, this._then);

  final Query$LicensePageRfe _instance;

  final TRes Function(Query$LicensePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLicenseByMstrLicenseId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe(
      mstrLicenseByMstrLicenseId: mstrLicenseByMstrLicenseId == _undefined
          ? _instance.mstrLicenseByMstrLicenseId
          : (mstrLicenseByMstrLicenseId
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId<TRes>
  get mstrLicenseByMstrLicenseId {
    final local$mstrLicenseByMstrLicenseId =
        _instance.mstrLicenseByMstrLicenseId;
    return local$mstrLicenseByMstrLicenseId == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId(
            local$mstrLicenseByMstrLicenseId,
            (e) => call(mstrLicenseByMstrLicenseId: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicensePageRfe<TRes>
    implements CopyWith$Query$LicensePageRfe<TRes> {
  _CopyWithStubImpl$Query$LicensePageRfe(this._res);

  TRes _res;

  call({
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId? mstrLicenseByMstrLicenseId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId<TRes>
  get mstrLicenseByMstrLicenseId =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId.stub(_res);
}

const documentNodeQueryLicensePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LicensePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrLicenseId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
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
          variable: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mstrLicenseByMstrLicenseId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrLicenseId'),
                value: VariableNode(name: NameNode(value: 'mstrLicenseId')),
              ),
            ],
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
                  name: NameNode(value: 'updateUserId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'updateUserHistoryId'),
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
                          value: 'sharedDictionaryBySharedDictionaryNameId',
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
                              alias: NameNode(value: 'ja'),
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
                                            value: 'jaLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                                    'sharedDictionaryValuesBySharedDictionaryId',
                              ),
                              alias: NameNode(value: 'en'),
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
                                            value: 'enLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                              alias: NameNode(value: 'ja'),
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
                                            value: 'jaLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                                    'sharedDictionaryValuesBySharedDictionaryId',
                              ),
                              alias: NameNode(value: 'en'),
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
                                            value: 'enLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                                value:
                                    'sharedDictionaryValuesBySharedDictionaryId',
                              ),
                              alias: NameNode(value: 'ja'),
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
                                            value: 'jaLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                                    'sharedDictionaryValuesBySharedDictionaryId',
                              ),
                              alias: NameNode(value: 'en'),
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
                                            value: 'enLanguageCodeId',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
Query$LicensePageRfe _parserFn$Query$LicensePageRfe(
  Map<String, dynamic> data,
) => Query$LicensePageRfe.fromJson(data);
typedef OnQueryComplete$Query$LicensePageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$LicensePageRfe?);

class Options$Query$LicensePageRfe
    extends graphql.QueryOptions<Query$LicensePageRfe> {
  Options$Query$LicensePageRfe({
    String? operationName,
    required Variables$Query$LicensePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LicensePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LicensePageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$LicensePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryLicensePageRfe,
         parserFn: _parserFn$Query$LicensePageRfe,
       );

  final OnQueryComplete$Query$LicensePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$LicensePageRfe
    extends graphql.WatchQueryOptions<Query$LicensePageRfe> {
  WatchOptions$Query$LicensePageRfe({
    String? operationName,
    required Variables$Query$LicensePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LicensePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryLicensePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$LicensePageRfe,
       );
}

class FetchMoreOptions$Query$LicensePageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LicensePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$LicensePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryLicensePageRfe,
       );
}

extension ClientExtension$Query$LicensePageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LicensePageRfe>> query$LicensePageRfe(
    Options$Query$LicensePageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$LicensePageRfe> watchQuery$LicensePageRfe(
    WatchOptions$Query$LicensePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$LicensePageRfe({
    required Query$LicensePageRfe data,
    required Variables$Query$LicensePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryLicensePageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$LicensePageRfe? readQuery$LicensePageRfe({
    required Variables$Query$LicensePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLicensePageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LicensePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LicensePageRfe> useQuery$LicensePageRfe(
  Options$Query$LicensePageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$LicensePageRfe> useWatchQuery$LicensePageRfe(
  WatchOptions$Query$LicensePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$LicensePageRfe$Widget
    extends graphql_flutter.Query<Query$LicensePageRfe> {
  Query$LicensePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$LicensePageRfe options,
    required graphql_flutter.QueryBuilder<Query$LicensePageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId({
    required this.mstrLicenseId,
    this.code,
    this.detail,
    this.publicLicense,
    this.customerLicense,
    this.organizationLicense,
    this.updateInterval,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.labels,
    this.$__typename = 'MstrLicense',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLicenseId = json['mstrLicenseId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$publicLicense = json['publicLicense'];
    final l$customerLicense = json['customerLicense'];
    final l$organizationLicense = json['organizationLicense'];
    final l$updateInterval = json['updateInterval'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId(
      mstrLicenseId: (l$mstrLicenseId as String),
      code: (l$code as String?),
      detail: (l$detail as String?),
      publicLicense: (l$publicLicense as bool?),
      customerLicense: (l$customerLicense as bool?),
      organizationLicense: (l$organizationLicense as bool?),
      updateInterval: l$updateInterval == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval.fromJson(
              (l$updateInterval as Map<String, dynamic>),
            ),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels.fromJson(
              (l$labels as Map<String, dynamic>),
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

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval?
  updateInterval;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels? labels;

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
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$updateUserId = updateUserId;
    _resultData['updateUserId'] = l$updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    _resultData['updateUserHistoryId'] = l$updateUserHistoryId;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
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
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLicenseId,
      l$code,
      l$detail,
      l$publicLicense,
      l$customerLicense,
      l$organizationLicense,
      l$updateInterval,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$labels,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId ||
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
    final l$updateUserId = updateUserId;
    final lOther$updateUserId = other.updateUserId;
    if (l$updateUserId != lOther$updateUserId) {
      return false;
    }
    final l$updateUserHistoryId = updateUserHistoryId;
    final lOther$updateUserHistoryId = other.updateUserHistoryId;
    if (l$updateUserHistoryId != lOther$updateUserHistoryId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId
    on Query$LicensePageRfe$mstrLicenseByMstrLicenseId {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId(this, (i) => i);
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId<TRes> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId instance,
    TRes Function(Query$LicensePageRfe$mstrLicenseByMstrLicenseId) then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId;

  TRes call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval?
    updateInterval,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels? labels,
    String? $__typename,
  });
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval<TRes>
  get updateInterval;
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels<TRes>
  get labels;
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId<TRes>
    implements CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId<TRes> {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId _instance;

  final TRes Function(Query$LicensePageRfe$mstrLicenseByMstrLicenseId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLicenseId = _undefined,
    Object? code = _undefined,
    Object? detail = _undefined,
    Object? publicLicense = _undefined,
    Object? customerLicense = _undefined,
    Object? organizationLicense = _undefined,
    Object? updateInterval = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId(
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
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      updateUserId: updateUserId == _undefined
          ? _instance.updateUserId
          : (updateUserId as String?),
      updateUserHistoryId: updateUserHistoryId == _undefined
          ? _instance.updateUserHistoryId
          : (updateUserHistoryId as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval<TRes>
  get updateInterval {
    final local$updateInterval = _instance.updateInterval;
    return local$updateInterval == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval(
            local$updateInterval,
            (e) => call(updateInterval: e),
          );
  }

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId<TRes>
    implements CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId<TRes> {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId(this._res);

  TRes _res;

  call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval?
    updateInterval,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels? labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval<TRes>
  get updateInterval =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval.stub(
        _res,
      );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels<TRes>
  get labels =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels.stub(
        _res,
      );
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval({
    this.years,
    this.months,
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.$__typename = 'Interval',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$years = json['years'];
    final l$months = json['months'];
    final l$days = json['days'];
    final l$hours = json['hours'];
    final l$minutes = json['minutes'];
    final l$seconds = json['seconds'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval(
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval
    on Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval;

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

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval,
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
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval(
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

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$updateInterval(
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

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels.fromJson(
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
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels
    on Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels instance,
    TRes Function(Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels) then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels<TRes>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels<TRes> {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels _instance;

  final TRes Function(Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels<TRes> {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
  ja;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
  ja;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
  ja;

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$LicensePageRfe$mstrLicenseByMstrLicenseId$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
