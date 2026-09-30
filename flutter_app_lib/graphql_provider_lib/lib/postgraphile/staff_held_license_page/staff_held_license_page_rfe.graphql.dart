import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$StaffHeldLicensePageRfe {
  factory Variables$Query$StaffHeldLicensePageRfe({
    required String mstrStaffLicenseId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$StaffHeldLicensePageRfe._({
    r'mstrStaffLicenseId': mstrStaffLicenseId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$StaffHeldLicensePageRfe._(this._$data);

  factory Variables$Query$StaffHeldLicensePageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrStaffLicenseId = data['mstrStaffLicenseId'];
    result$data['mstrStaffLicenseId'] = (l$mstrStaffLicenseId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$StaffHeldLicensePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrStaffLicenseId => (_$data['mstrStaffLicenseId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    result$data['mstrStaffLicenseId'] = l$mstrStaffLicenseId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$StaffHeldLicensePageRfe<
    Variables$Query$StaffHeldLicensePageRfe
  >
  get copyWith =>
      CopyWith$Variables$Query$StaffHeldLicensePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$StaffHeldLicensePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    final lOther$mstrStaffLicenseId = other.mstrStaffLicenseId;
    if (l$mstrStaffLicenseId != lOther$mstrStaffLicenseId) {
      return false;
    }
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final lOther$jaLanguageCodeId = other.jaLanguageCodeId;
    if (l$jaLanguageCodeId != lOther$jaLanguageCodeId) {
      return false;
    }
    final l$enLanguageCodeId = enLanguageCodeId;
    final lOther$enLanguageCodeId = other.enLanguageCodeId;
    if (l$enLanguageCodeId != lOther$enLanguageCodeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrStaffLicenseId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$StaffHeldLicensePageRfe<TRes> {
  factory CopyWith$Variables$Query$StaffHeldLicensePageRfe(
    Variables$Query$StaffHeldLicensePageRfe instance,
    TRes Function(Variables$Query$StaffHeldLicensePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$StaffHeldLicensePageRfe;

  factory CopyWith$Variables$Query$StaffHeldLicensePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$StaffHeldLicensePageRfe;

  TRes call({
    String? mstrStaffLicenseId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$StaffHeldLicensePageRfe<TRes>
    implements CopyWith$Variables$Query$StaffHeldLicensePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$StaffHeldLicensePageRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$StaffHeldLicensePageRfe _instance;

  final TRes Function(Variables$Query$StaffHeldLicensePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffLicenseId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$StaffHeldLicensePageRfe._({
      ..._instance._$data,
      if (mstrStaffLicenseId != _undefined && mstrStaffLicenseId != null)
        'mstrStaffLicenseId': (mstrStaffLicenseId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$StaffHeldLicensePageRfe<TRes>
    implements CopyWith$Variables$Query$StaffHeldLicensePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$StaffHeldLicensePageRfe(this._res);

  TRes _res;

  call({
    String? mstrStaffLicenseId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$StaffHeldLicensePageRfe {
  Query$StaffHeldLicensePageRfe({
    this.mstrStaffLicenseByMstrStaffLicenseId,
    this.$__typename = 'Query',
  });

  factory Query$StaffHeldLicensePageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrStaffLicenseByMstrStaffLicenseId =
        json['mstrStaffLicenseByMstrStaffLicenseId'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe(
      mstrStaffLicenseByMstrStaffLicenseId:
          l$mstrStaffLicenseByMstrStaffLicenseId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId.fromJson(
              (l$mstrStaffLicenseByMstrStaffLicenseId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId?
  mstrStaffLicenseByMstrStaffLicenseId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffLicenseByMstrStaffLicenseId =
        mstrStaffLicenseByMstrStaffLicenseId;
    _resultData['mstrStaffLicenseByMstrStaffLicenseId'] =
        l$mstrStaffLicenseByMstrStaffLicenseId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffLicenseByMstrStaffLicenseId =
        mstrStaffLicenseByMstrStaffLicenseId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStaffLicenseByMstrStaffLicenseId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StaffHeldLicensePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffLicenseByMstrStaffLicenseId =
        mstrStaffLicenseByMstrStaffLicenseId;
    final lOther$mstrStaffLicenseByMstrStaffLicenseId =
        other.mstrStaffLicenseByMstrStaffLicenseId;
    if (l$mstrStaffLicenseByMstrStaffLicenseId !=
        lOther$mstrStaffLicenseByMstrStaffLicenseId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$StaffHeldLicensePageRfe
    on Query$StaffHeldLicensePageRfe {
  CopyWith$Query$StaffHeldLicensePageRfe<Query$StaffHeldLicensePageRfe>
  get copyWith => CopyWith$Query$StaffHeldLicensePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe<TRes> {
  factory CopyWith$Query$StaffHeldLicensePageRfe(
    Query$StaffHeldLicensePageRfe instance,
    TRes Function(Query$StaffHeldLicensePageRfe) then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe;

  factory CopyWith$Query$StaffHeldLicensePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$StaffHeldLicensePageRfe;

  TRes call({
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId?
    mstrStaffLicenseByMstrStaffLicenseId,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId<
    TRes
  >
  get mstrStaffLicenseByMstrStaffLicenseId;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe<TRes>
    implements CopyWith$Query$StaffHeldLicensePageRfe<TRes> {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe(this._instance, this._then);

  final Query$StaffHeldLicensePageRfe _instance;

  final TRes Function(Query$StaffHeldLicensePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffLicenseByMstrStaffLicenseId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe(
      mstrStaffLicenseByMstrStaffLicenseId:
          mstrStaffLicenseByMstrStaffLicenseId == _undefined
          ? _instance.mstrStaffLicenseByMstrStaffLicenseId
          : (mstrStaffLicenseByMstrStaffLicenseId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId<
    TRes
  >
  get mstrStaffLicenseByMstrStaffLicenseId {
    final local$mstrStaffLicenseByMstrStaffLicenseId =
        _instance.mstrStaffLicenseByMstrStaffLicenseId;
    return local$mstrStaffLicenseByMstrStaffLicenseId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId(
            local$mstrStaffLicenseByMstrStaffLicenseId,
            (e) => call(mstrStaffLicenseByMstrStaffLicenseId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe<TRes>
    implements CopyWith$Query$StaffHeldLicensePageRfe<TRes> {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe(this._res);

  TRes _res;

  call({
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId?
    mstrStaffLicenseByMstrStaffLicenseId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId<
    TRes
  >
  get mstrStaffLicenseByMstrStaffLicenseId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId.stub(
        _res,
      );
}

const documentNodeQueryStaffHeldLicensePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'StaffHeldLicensePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrStaffLicenseId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mstrStaffLicenseByMstrStaffLicenseId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrStaffLicenseId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrStaffLicenseId'),
                ),
              ),
            ],
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
                  name: NameNode(value: 'infoStaffByInfoStaffId'),
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
                                          alias: NameNode(value: 'ja'),
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
                                                            'jaLanguageCodeId',
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
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
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
                                                            'enLanguageCodeId',
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
                                          alias: NameNode(value: 'ja'),
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
                                                            'jaLanguageCodeId',
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
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
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
                                                            'enLanguageCodeId',
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
                                          alias: NameNode(value: 'ja'),
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
                                                            'jaLanguageCodeId',
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
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
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
                                                            'enLanguageCodeId',
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
                  name: NameNode(value: 'mstrLicenseByMstrLicenseId'),
                  alias: NameNode(value: 'license'),
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
                                          alias: NameNode(value: 'ja'),
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
                                                            'jaLanguageCodeId',
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
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
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
                                                            'enLanguageCodeId',
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
                                          alias: NameNode(value: 'ja'),
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
                                                            'jaLanguageCodeId',
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
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
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
                                                            'enLanguageCodeId',
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
                                          alias: NameNode(value: 'ja'),
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
                                                            'jaLanguageCodeId',
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
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
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
                                                            'enLanguageCodeId',
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
Query$StaffHeldLicensePageRfe _parserFn$Query$StaffHeldLicensePageRfe(
  Map<String, dynamic> data,
) => Query$StaffHeldLicensePageRfe.fromJson(data);
typedef OnQueryComplete$Query$StaffHeldLicensePageRfe =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$StaffHeldLicensePageRfe?,
    );

class Options$Query$StaffHeldLicensePageRfe
    extends graphql.QueryOptions<Query$StaffHeldLicensePageRfe> {
  Options$Query$StaffHeldLicensePageRfe({
    String? operationName,
    required Variables$Query$StaffHeldLicensePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StaffHeldLicensePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StaffHeldLicensePageRfe? onComplete,
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
                     : _parserFn$Query$StaffHeldLicensePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryStaffHeldLicensePageRfe,
         parserFn: _parserFn$Query$StaffHeldLicensePageRfe,
       );

  final OnQueryComplete$Query$StaffHeldLicensePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$StaffHeldLicensePageRfe
    extends graphql.WatchQueryOptions<Query$StaffHeldLicensePageRfe> {
  WatchOptions$Query$StaffHeldLicensePageRfe({
    String? operationName,
    required Variables$Query$StaffHeldLicensePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StaffHeldLicensePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryStaffHeldLicensePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$StaffHeldLicensePageRfe,
       );
}

class FetchMoreOptions$Query$StaffHeldLicensePageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StaffHeldLicensePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$StaffHeldLicensePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryStaffHeldLicensePageRfe,
       );
}

extension ClientExtension$Query$StaffHeldLicensePageRfe
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StaffHeldLicensePageRfe>>
  query$StaffHeldLicensePageRfe(
    Options$Query$StaffHeldLicensePageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$StaffHeldLicensePageRfe>
  watchQuery$StaffHeldLicensePageRfe(
    WatchOptions$Query$StaffHeldLicensePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$StaffHeldLicensePageRfe({
    required Query$StaffHeldLicensePageRfe data,
    required Variables$Query$StaffHeldLicensePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryStaffHeldLicensePageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$StaffHeldLicensePageRfe? readQuery$StaffHeldLicensePageRfe({
    required Variables$Query$StaffHeldLicensePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryStaffHeldLicensePageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$StaffHeldLicensePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$StaffHeldLicensePageRfe>
useQuery$StaffHeldLicensePageRfe(
  Options$Query$StaffHeldLicensePageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$StaffHeldLicensePageRfe>
useWatchQuery$StaffHeldLicensePageRfe(
  WatchOptions$Query$StaffHeldLicensePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$StaffHeldLicensePageRfe$Widget
    extends graphql_flutter.Query<Query$StaffHeldLicensePageRfe> {
  Query$StaffHeldLicensePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$StaffHeldLicensePageRfe options,
    required graphql_flutter.QueryBuilder<Query$StaffHeldLicensePageRfe>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId({
    required this.mstrStaffLicenseId,
    required this.infoStaffId,
    required this.mstrLicenseId,
    this.startAt,
    required this.stopAt,
    this.abeyance,
    this.abeyanceAt,
    this.revocation,
    this.revocationAt,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.staff,
    this.license,
    this.$__typename = 'MstrStaffLicense',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId.fromJson(
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
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$staff = json['staff'];
    final l$license = json['license'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId(
      mstrStaffLicenseId: (l$mstrStaffLicenseId as String),
      infoStaffId: (l$infoStaffId as String),
      mstrLicenseId: (l$mstrLicenseId as String),
      startAt: (l$startAt as String?),
      stopAt: (l$stopAt as String),
      abeyance: (l$abeyance as bool?),
      abeyanceAt: (l$abeyanceAt as String?),
      revocation: (l$revocation as bool?),
      revocationAt: (l$revocationAt as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      staff: l$staff == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff.fromJson(
              (l$staff as Map<String, dynamic>),
            ),
      license: l$license == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license.fromJson(
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

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff?
  staff;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license?
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
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
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
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId
    on Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId;

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
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff?
    staff,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license?
    license,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff<
    TRes
  >
  get staff;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license<
    TRes
  >
  get license;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId,
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
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? staff = _undefined,
    Object? license = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId(
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
      staff: staff == _undefined
          ? _instance.staff
          : (staff
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff?),
      license: license == _undefined
          ? _instance.license
          : (license
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff<
    TRes
  >
  get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff(
            local$staff,
            (e) => call(staff: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license<
    TRes
  >
  get license {
    final local$license = _instance.license;
    return local$license == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license(
            local$license,
            (e) => call(license: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId(
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
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff?
    staff,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license?
    license,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff<
    TRes
  >
  get staff =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license<
    TRes
  >
  get license =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff({
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

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff.fromJson(
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
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff(
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
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user.fromJson(
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

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels?
  labels;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff
    on Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff;

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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels?
    labels,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels<
    TRes
  >
  get labels;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff,
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff(
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
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff(
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels?
    labels,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels.fromJson(
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
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels,
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user({
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

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user.fromJson(
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
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user(
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
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name.fromJson(
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

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user,
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user(
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
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user(
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name.fromJson(
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
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name,
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license({
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

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license.fromJson(
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
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license(
      mstrLicenseId: (l$mstrLicenseId as String),
      code: (l$code as String?),
      detail: (l$detail as String?),
      publicLicense: (l$publicLicense as bool?),
      customerLicense: (l$customerLicense as bool?),
      organizationLicense: (l$organizationLicense as bool?),
      updateInterval: l$updateInterval == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval.fromJson(
              (l$updateInterval as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user.fromJson(
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

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval?
  updateInterval;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels?
  labels;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license
    on Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license;

  TRes call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval?
    updateInterval,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels?
    labels,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval<
    TRes
  >
  get updateInterval;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels<
    TRes
  >
  get labels;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license,
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license(
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
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval<
    TRes
  >
  get updateInterval {
    final local$updateInterval = _instance.updateInterval;
    return local$updateInterval == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval(
            local$updateInterval,
            (e) => call(updateInterval: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license(
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval?
    updateInterval,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels?
    labels,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval<
    TRes
  >
  get updateInterval =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval({
    this.years,
    this.months,
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.$__typename = 'Interval',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$years = json['years'];
    final l$months = json['months'];
    final l$days = json['days'];
    final l$hours = json['hours'];
    final l$minutes = json['minutes'];
    final l$seconds = json['seconds'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval;

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

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval,
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval(
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

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$updateInterval(
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

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels.fromJson(
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
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels,
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user({
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

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user.fromJson(
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
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user(
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
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name.fromJson(
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

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user,
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user(
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
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user(
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name.fromJson(
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
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name,
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
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffHeldLicensePageRfe$mstrStaffLicenseByMstrStaffLicenseId$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
