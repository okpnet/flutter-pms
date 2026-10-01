import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$StaffCapabilityRfe {
  factory Variables$Query$StaffCapabilityRfe({
    required String mstrStaffCapabilityId,
    required String infoStaffId,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Query$StaffCapabilityRfe._({
    r'mstrStaffCapabilityId': mstrStaffCapabilityId,
    r'infoStaffId': infoStaffId,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Query$StaffCapabilityRfe._(this._$data);

  factory Variables$Query$StaffCapabilityRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrStaffCapabilityId = data['mstrStaffCapabilityId'];
    result$data['mstrStaffCapabilityId'] = (l$mstrStaffCapabilityId as String);
    final l$infoStaffId = data['infoStaffId'];
    result$data['infoStaffId'] = (l$infoStaffId as String);
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Query$StaffCapabilityRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrStaffCapabilityId =>
      (_$data['mstrStaffCapabilityId'] as String);

  String get infoStaffId => (_$data['infoStaffId'] as String);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    result$data['mstrStaffCapabilityId'] = l$mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    result$data['infoStaffId'] = l$infoStaffId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Query$StaffCapabilityRfe<
    Variables$Query$StaffCapabilityRfe
  >
  get copyWith => CopyWith$Variables$Query$StaffCapabilityRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$StaffCapabilityRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final lOther$mstrStaffCapabilityId = other.mstrStaffCapabilityId;
    if (l$mstrStaffCapabilityId != lOther$mstrStaffCapabilityId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
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
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrStaffCapabilityId,
      l$infoStaffId,
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$StaffCapabilityRfe<TRes> {
  factory CopyWith$Variables$Query$StaffCapabilityRfe(
    Variables$Query$StaffCapabilityRfe instance,
    TRes Function(Variables$Query$StaffCapabilityRfe) then,
  ) = _CopyWithImpl$Variables$Query$StaffCapabilityRfe;

  factory CopyWith$Variables$Query$StaffCapabilityRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$StaffCapabilityRfe;

  TRes call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Query$StaffCapabilityRfe<TRes>
    implements CopyWith$Variables$Query$StaffCapabilityRfe<TRes> {
  _CopyWithImpl$Variables$Query$StaffCapabilityRfe(this._instance, this._then);

  final Variables$Query$StaffCapabilityRfe _instance;

  final TRes Function(Variables$Query$StaffCapabilityRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffCapabilityId = _undefined,
    Object? infoStaffId = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Query$StaffCapabilityRfe._({
      ..._instance._$data,
      if (mstrStaffCapabilityId != _undefined && mstrStaffCapabilityId != null)
        'mstrStaffCapabilityId': (mstrStaffCapabilityId as String),
      if (infoStaffId != _undefined && infoStaffId != null)
        'infoStaffId': (infoStaffId as String),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$StaffCapabilityRfe<TRes>
    implements CopyWith$Variables$Query$StaffCapabilityRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$StaffCapabilityRfe(this._res);

  TRes _res;

  call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Query$StaffCapabilityRfe {
  Query$StaffCapabilityRfe({
    this.mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
    this.$__typename = 'Query',
  });

  factory Query$StaffCapabilityRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        json['mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe(
      mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId:
          l$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.fromJson(
              (l$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId?
  mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    _resultData['mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId'] =
        l$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StaffCapabilityRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    final lOther$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        other.mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    if (l$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId !=
        lOther$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$StaffCapabilityRfe
    on Query$StaffCapabilityRfe {
  CopyWith$Query$StaffCapabilityRfe<Query$StaffCapabilityRfe> get copyWith =>
      CopyWith$Query$StaffCapabilityRfe(this, (i) => i);
}

abstract class CopyWith$Query$StaffCapabilityRfe<TRes> {
  factory CopyWith$Query$StaffCapabilityRfe(
    Query$StaffCapabilityRfe instance,
    TRes Function(Query$StaffCapabilityRfe) then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe;

  factory CopyWith$Query$StaffCapabilityRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$StaffCapabilityRfe;

  TRes call({
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId?
    mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
    TRes
  >
  get mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
}

class _CopyWithImpl$Query$StaffCapabilityRfe<TRes>
    implements CopyWith$Query$StaffCapabilityRfe<TRes> {
  _CopyWithImpl$Query$StaffCapabilityRfe(this._instance, this._then);

  final Query$StaffCapabilityRfe _instance;

  final TRes Function(Query$StaffCapabilityRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe(
      mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId:
          mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId == _undefined
          ? _instance.mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
          : (mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
    TRes
  >
  get mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId {
    final local$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        _instance.mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    return local$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId ==
            null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
            local$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
            (e) => call(
              mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId: e,
            ),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe<TRes>
    implements CopyWith$Query$StaffCapabilityRfe<TRes> {
  _CopyWithStubImpl$Query$StaffCapabilityRfe(this._res);

  TRes _res;

  call({
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId?
    mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
    TRes
  >
  get mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.stub(
        _res,
      );
}

const documentNodeQueryStaffCapabilityRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'StaffCapabilityRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrStaffCapabilityId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoStaffId')),
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
            name: NameNode(
              value: 'mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrStaffCapabilityId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrStaffCapabilityId'),
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'infoStaffId'),
                value: VariableNode(name: NameNode(value: 'infoStaffId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrStaffCapabilityId'),
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
                  name: NameNode(value: 'mstrCapabilityId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'value'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'stop'),
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
                  name: NameNode(value: 'mstrCapabilityByMstrCapabilityId'),
                  alias: NameNode(value: 'capability'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrCapabilityId'),
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
                        name: NameNode(value: 'referenceValue'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'max'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'min'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'step'),
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
Query$StaffCapabilityRfe _parserFn$Query$StaffCapabilityRfe(
  Map<String, dynamic> data,
) => Query$StaffCapabilityRfe.fromJson(data);
typedef OnQueryComplete$Query$StaffCapabilityRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$StaffCapabilityRfe?);

class Options$Query$StaffCapabilityRfe
    extends graphql.QueryOptions<Query$StaffCapabilityRfe> {
  Options$Query$StaffCapabilityRfe({
    String? operationName,
    required Variables$Query$StaffCapabilityRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StaffCapabilityRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StaffCapabilityRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$StaffCapabilityRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryStaffCapabilityRfe,
         parserFn: _parserFn$Query$StaffCapabilityRfe,
       );

  final OnQueryComplete$Query$StaffCapabilityRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$StaffCapabilityRfe
    extends graphql.WatchQueryOptions<Query$StaffCapabilityRfe> {
  WatchOptions$Query$StaffCapabilityRfe({
    String? operationName,
    required Variables$Query$StaffCapabilityRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StaffCapabilityRfe? typedOptimisticResult,
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
         document: documentNodeQueryStaffCapabilityRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$StaffCapabilityRfe,
       );
}

class FetchMoreOptions$Query$StaffCapabilityRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StaffCapabilityRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$StaffCapabilityRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryStaffCapabilityRfe,
       );
}

extension ClientExtension$Query$StaffCapabilityRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StaffCapabilityRfe>>
  query$StaffCapabilityRfe(Options$Query$StaffCapabilityRfe options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$StaffCapabilityRfe>
  watchQuery$StaffCapabilityRfe(
    WatchOptions$Query$StaffCapabilityRfe options,
  ) => this.watchQuery(options);

  void writeQuery$StaffCapabilityRfe({
    required Query$StaffCapabilityRfe data,
    required Variables$Query$StaffCapabilityRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryStaffCapabilityRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$StaffCapabilityRfe? readQuery$StaffCapabilityRfe({
    required Variables$Query$StaffCapabilityRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryStaffCapabilityRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$StaffCapabilityRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$StaffCapabilityRfe>
useQuery$StaffCapabilityRfe(Options$Query$StaffCapabilityRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$StaffCapabilityRfe>
useWatchQuery$StaffCapabilityRfe(
  WatchOptions$Query$StaffCapabilityRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$StaffCapabilityRfe$Widget
    extends graphql_flutter.Query<Query$StaffCapabilityRfe> {
  Query$StaffCapabilityRfe$Widget({
    widgets.Key? key,
    required Options$Query$StaffCapabilityRfe options,
    required graphql_flutter.QueryBuilder<Query$StaffCapabilityRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId({
    required this.mstrStaffCapabilityId,
    required this.infoStaffId,
    this.mstrCapabilityId,
    this.value,
    this.stop,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.staff,
    this.capability,
    this.$__typename = 'MstrStaffCapability',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStaffCapabilityId = json['mstrStaffCapabilityId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$mstrCapabilityId = json['mstrCapabilityId'];
    final l$value = json['value'];
    final l$stop = json['stop'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$staff = json['staff'];
    final l$capability = json['capability'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
      mstrStaffCapabilityId: (l$mstrStaffCapabilityId as String),
      infoStaffId: (l$infoStaffId as String),
      mstrCapabilityId: (l$mstrCapabilityId as String?),
      value: (l$value as String?),
      stop: (l$stop as bool?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      staff: l$staff == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff.fromJson(
              (l$staff as Map<String, dynamic>),
            ),
      capability: l$capability == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability.fromJson(
              (l$capability as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStaffCapabilityId;

  final String infoStaffId;

  final String? mstrCapabilityId;

  final String? value;

  final bool? stop;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff?
  staff;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability?
  capability;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    _resultData['mstrStaffCapabilityId'] = l$mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$mstrCapabilityId = mstrCapabilityId;
    _resultData['mstrCapabilityId'] = l$mstrCapabilityId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$stop = stop;
    _resultData['stop'] = l$stop;
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
    final l$capability = capability;
    _resultData['capability'] = l$capability?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$value = value;
    final l$stop = stop;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$staff = staff;
    final l$capability = capability;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStaffCapabilityId,
      l$infoStaffId,
      l$mstrCapabilityId,
      l$value,
      l$stop,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$staff,
      l$capability,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final lOther$mstrStaffCapabilityId = other.mstrStaffCapabilityId;
    if (l$mstrStaffCapabilityId != lOther$mstrStaffCapabilityId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$stop = stop;
    final lOther$stop = other.stop;
    if (l$stop != lOther$stop) {
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
    final l$capability = capability;
    final lOther$capability = other.capability;
    if (l$capability != lOther$capability) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;

  TRes call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? mstrCapabilityId,
    String? value,
    bool? stop,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff?
    staff,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability?
    capability,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff<
    TRes
  >
  get staff;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability<
    TRes
  >
  get capability;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffCapabilityId = _undefined,
    Object? infoStaffId = _undefined,
    Object? mstrCapabilityId = _undefined,
    Object? value = _undefined,
    Object? stop = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? staff = _undefined,
    Object? capability = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
      mstrStaffCapabilityId:
          mstrStaffCapabilityId == _undefined || mstrStaffCapabilityId == null
          ? _instance.mstrStaffCapabilityId
          : (mstrStaffCapabilityId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      mstrCapabilityId: mstrCapabilityId == _undefined
          ? _instance.mstrCapabilityId
          : (mstrCapabilityId as String?),
      value: value == _undefined ? _instance.value : (value as String?),
      stop: stop == _undefined ? _instance.stop : (stop as bool?),
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
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff?),
      capability: capability == _undefined
          ? _instance.capability
          : (capability
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff<
    TRes
  >
  get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff(
            local$staff,
            (e) => call(staff: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability<
    TRes
  >
  get capability {
    final local$capability = _instance.capability;
    return local$capability == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability(
            local$capability,
            (e) => call(capability: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? mstrCapabilityId,
    String? value,
    bool? stop,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff?
    staff,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability?
    capability,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff<
    TRes
  >
  get staff =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability<
    TRes
  >
  get capability =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff({
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

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff.fromJson(
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
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff(
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
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user.fromJson(
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

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels?
  labels;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff;

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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels?
    labels,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels<
    TRes
  >
  get labels;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff,
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff(
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
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff(
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels?
    labels,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels.fromJson(
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
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels,
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user({
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

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user.fromJson(
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
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user(
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
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name.fromJson(
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

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user,
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user(
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
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user(
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name.fromJson(
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
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name,
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability({
    required this.mstrCapabilityId,
    required this.code,
    this.detail,
    required this.referenceValue,
    this.max,
    this.min,
    this.step,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.update_user,
    this.$__typename = 'MstrCapability',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrCapabilityId = json['mstrCapabilityId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$referenceValue = json['referenceValue'];
    final l$max = json['max'];
    final l$min = json['min'];
    final l$step = json['step'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability(
      mstrCapabilityId: (l$mstrCapabilityId as String),
      code: (l$code as String),
      detail: (l$detail as String?),
      referenceValue: (l$referenceValue as String),
      max: (l$max as String?),
      min: (l$min as String?),
      step: (l$step as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrCapabilityId;

  final String code;

  final String? detail;

  final String referenceValue;

  final String? max;

  final String? min;

  final String? step;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels?
  labels;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrCapabilityId = mstrCapabilityId;
    _resultData['mstrCapabilityId'] = l$mstrCapabilityId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$referenceValue = referenceValue;
    _resultData['referenceValue'] = l$referenceValue;
    final l$max = max;
    _resultData['max'] = l$max;
    final l$min = min;
    _resultData['min'] = l$min;
    final l$step = step;
    _resultData['step'] = l$step;
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
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$code = code;
    final l$detail = detail;
    final l$referenceValue = referenceValue;
    final l$max = max;
    final l$min = min;
    final l$step = step;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrCapabilityId,
      l$code,
      l$detail,
      l$referenceValue,
      l$max,
      l$min,
      l$step,
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
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
    final l$referenceValue = referenceValue;
    final lOther$referenceValue = other.referenceValue;
    if (l$referenceValue != lOther$referenceValue) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$step = step;
    final lOther$step = other.step;
    if (l$step != lOther$step) {
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability;

  TRes call({
    String? mstrCapabilityId,
    String? code,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels?
    labels,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels<
    TRes
  >
  get labels;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrCapabilityId = _undefined,
    Object? code = _undefined,
    Object? detail = _undefined,
    Object? referenceValue = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
    Object? step = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability(
      mstrCapabilityId:
          mstrCapabilityId == _undefined || mstrCapabilityId == null
          ? _instance.mstrCapabilityId
          : (mstrCapabilityId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      referenceValue: referenceValue == _undefined || referenceValue == null
          ? _instance.referenceValue
          : (referenceValue as String),
      max: max == _undefined ? _instance.max : (max as String?),
      min: min == _undefined ? _instance.min : (min as String?),
      step: step == _undefined ? _instance.step : (step as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability(
    this._res,
  );

  TRes _res;

  call({
    String? mstrCapabilityId,
    String? code,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels?
    labels,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels.fromJson(
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
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels,
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user({
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

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user.fromJson(
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
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user(
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
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name.fromJson(
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

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user,
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user(
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
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user(
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name.fromJson(
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
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name,
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
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$StaffCapabilityRfe$mstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
