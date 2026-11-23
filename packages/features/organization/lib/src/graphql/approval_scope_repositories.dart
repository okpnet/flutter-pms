import 'dart:convert';

import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;

/// 共通の通信(読み込み・書き込み・更新者)。
mixin _GraphqlAccess {
  GraphQLClient get client;
  AuditUserSource? get auditUser;

  Future<AuditUser?> updater() async => auditUser == null ? null : auditUser!();

  Future<Map<String, dynamic>> run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) _throwMapped(e);
    return result.data ?? const {};
  }

  Never _throwMapped(OperationException e) {
    final message = e.graphqlErrors.map((x) => x.message).join(' ');
    if (message.contains('名称には、いずれかの言語に値が必要')) {
      throw const EntityValidationException({'name': EntityFieldError.required});
    }
    throw e;
  }

  static String text(Object? v) => v == null ? '' : '$v';

  /// 空の文字は null(列を空にする)。
  static String? nullable(String v) => v.trim().isEmpty ? null : v.trim();
}

/// アクセスパスの承認(`accesspathapproval`。DB の `info_access_path_approval`)の取得元(GraphQL 版。書き込みできる)。
///
/// 名称は多言語の呼称(共通関数 `shared_appellation_save`。言語 `ja`)で作り、返った ID を本体の `names` に渡す。アクセスパスは ID(`access_path`)で参照する
/// (アクセスパスの画面は別の機能)。削除は論理削除。承認の範囲から参照されているものは、削除できない(使用中)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class AccessPathApprovalRepository with _GraphqlAccess implements IEntityRepository {
  AccessPathApprovalRepository(this.definition, this.client, this._language, this.auditUser);

  @override
  final EntityDefinition definition;
  @override
  final GraphQLClient client;
  @override
  final AuditUserSource? auditUser;
  final Future<String> Function() _language;

  static String _dict(Object? labels) {
    if (labels is! Map) return '';
    final dict = labels['sharedDictionaryBySharedDictionaryNameId'];
    if (dict is! Map) return '';
    final value = dict['value'];
    final nodes = value is Map ? value['nodes'] : null;
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
  }

  EntityRecord _record(Map<dynamic, dynamic> n) => EntityRecord(
    id: '${n['infoAccessPathApprovalId']}',
    values: {
      'name': _dict(n['labels']),
      'access_path': _GraphqlAccess.text(n['infoAccessPathId']),
      'remarks': _GraphqlAccess.text(n['remarks']),
    },
  );

  Future<List<Map<dynamic, dynamic>>> _nodes(int first, int offset, Map<String, dynamic> filter) async {
    final data = await run(documentNodeQueryAccessPathApprovalLedgerPageRead, {
      'first': first,
      'offset': offset,
      'languageCodeId': await _language(),
      if (filter.isNotEmpty) 'filter': filter,
    });
    return [...((data['allInfoAccessPathApprovals'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>()];
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{
      if (t('name').isEmpty) 'name': EntityFieldError.required,
      if (t('access_path').isEmpty) 'access_path': EntityFieldError.required,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);
    final isNew = record.id.isEmpty;
    final node = isNew ? null : (await _nodes(1, 0, {'infoAccessPathApprovalId': {'equalTo': record.id}})).firstOrNull;
    if (!isNew && node == null) throw StateError('アクセスパスの承認が見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) => isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await updater();
    final labels = node?['labels'];
    final existingNames = labels is Map ? labels['sharedAppellationsId'] as String? : null;
    String? namesId = existingNames;
    if (isNew || changed('name')) {
      final saved = await run(
        documentNodeMutationApprovalPatternAppellationSavePageCall,
        {
          'pAppellationId': existingNames,
          'pName': jsonEncode({'ja': t('name')}),
          'pStaffId': au?.staffId,
          'pStaffHistoryId': au?.staffHistoryId,
        },
        mutation: true,
      );
      namesId = ((saved['sharedAppellationSave'] as Map?)?['sharedAppellation'] as Map?)?['sharedAppellationsId'] as String?;
      if (namesId == null) throw StateError('呼称を保存できませんでした');
    }
    final String id;
    if (isNew) {
      final data = await run(
        documentNodeMutationAccessPathApprovalLedgerPageCreate,
        {
          'infoAccessPathId': t('access_path'),
          'names': namesId,
          'remarks': _GraphqlAccess.nullable(t('remarks')),
          'updateUserId': ?au?.staffId,
          'updateUserHistoryId': ?au?.staffHistoryId,
        },
        mutation: true,
      );
      final created = (data['createInfoAccessPathApproval'] as Map?)?['infoAccessPathApproval'] as Map?;
      if (created == null) throw StateError('アクセスパスの承認を登録できませんでした');
      id = '${created['infoAccessPathApprovalId']}';
    } else {
      id = record.id;
      if (changed('access_path') || changed('remarks') || namesId != existingNames) {
        await run(
          documentNodeMutationAccessPathApprovalLedgerPageEdit,
          {
            'infoAccessPathApprovalId': id,
            if (changed('access_path')) 'infoAccessPathId': t('access_path'),
            if (namesId != existingNames) 'names': namesId,
            if (changed('remarks')) 'remarks': _GraphqlAccess.nullable(t('remarks')),
            'updateUserId': ?au?.staffId,
            'updateUserHistoryId': ?au?.staffHistoryId,
          },
          mutation: true,
        );
      }
    }
    return (await findById(id)) ?? record;
  }

  /// 論理削除。承認の範囲(承認パターンごと)から参照されているときは、使用中として止める。
  @override
  Future<void> remove(String id) async {
    final used = await run(documentNodeQueryApprovalScopeLedgerPageRead, {
      'first': 1,
      'filter': {
        'infoAccessPathApprovalId': {'equalTo': id},
      },
    });
    final nodes = (used['allMstrApprovalScopePatterns'] as Map?)?['nodes'] as List? ?? const [];
    if (nodes.isNotEmpty) throw EntityInUseException(definition.key, id, EntityBlockReason.referenced);
    final au = await updater();
    await run(
      documentNodeMutationAccessPathApprovalLedgerPageRemove,
      {
        'infoAccessPathApprovalId': id,
        'remove': true,
        'updateUserId': ?au?.staffId,
        'updateUserHistoryId': ?au?.staffHistoryId,
      },
      mutation: true,
    );
  }

  @override
  Future<List<EntityRecord>> find({required int take, int skip = 0, Expression? predicate, SortExpression? orders}) async => [
    for (final n in await _nodes(take, skip, const {})) _record(n),
  ];

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _nodes(1, 0, {
      'infoAccessPathApprovalId': {'equalTo': id},
    });
    return rows.isEmpty ? null : _record(rows.first);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}

/// 承認の範囲(`approvalscope`。承認パターンの子の台帳。DB の `mstr_approval_scope_pattern`)の取得元(GraphQL 版。書き込みできる)。
/// 承認パターンを、どのアクセスパスの承認に使うか(アクセスパスの承認 + 備考)。親の承認パターンは [EntityRecord.parentId]。
/// 同じ承認パターンに同じアクセスパスの承認を重ねて登録しない(画面の検査。`uniqueKeys` と同じ)。削除は論理削除。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class ApprovalScopeRepository with _GraphqlAccess implements IEntityRepository {
  ApprovalScopeRepository(this.definition, this.client, this.auditUser);

  @override
  final EntityDefinition definition;
  @override
  final GraphQLClient client;
  @override
  final AuditUserSource? auditUser;

  EntityRecord _record(Map<dynamic, dynamic> n) => EntityRecord(
    id: '${n['mstrApprovalScopePatternId']}',
    parentId: '${n['mstrApprovalPatternId']}',
    values: {
      'access_path_approval': _GraphqlAccess.text(n['infoAccessPathApprovalId']),
      'remarks': _GraphqlAccess.text(n['remarks']),
    },
  );

  Future<List<Map<dynamic, dynamic>>> _nodes(int first, int offset, Map<String, dynamic> filter) async {
    final data = await run(documentNodeQueryApprovalScopeLedgerPageRead, {
      'first': first,
      'offset': offset,
      if (filter.isNotEmpty) 'filter': filter,
    });
    return [...((data['allMstrApprovalScopePatterns'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>()];
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final isNew = record.id.isEmpty;
    final errors = <String, EntityFieldError>{
      if (t('access_path_approval').isEmpty) 'access_path_approval': EntityFieldError.required,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);
    final parent = isNew ? record.parentId : (await findById(record.id))?.parentId;
    if (parent == null || parent.isEmpty) throw StateError('承認パターンが指定されていません');
    // 同じ承認パターンに、同じアクセスパスの承認は 1 件
    final same = await _nodes(2, 0, {
      'mstrApprovalPatternId': {'equalTo': parent},
      'infoAccessPathApprovalId': {'equalTo': t('access_path_approval')},
    });
    if (same.any((n) => '${n['mstrApprovalScopePatternId']}' != record.id)) {
      throw const EntityValidationException({'access_path_approval': EntityFieldError.duplicate});
    }
    final au = await updater();
    final String id;
    if (isNew) {
      final data = await run(
        documentNodeMutationApprovalScopeLedgerPageCreate,
        {
          'mstrApprovalPatternId': parent,
          'infoAccessPathApprovalId': t('access_path_approval'),
          'remarks': _GraphqlAccess.nullable(t('remarks')),
          'updateUserId': ?au?.staffId,
          'updateUserHistoryId': ?au?.staffHistoryId,
        },
        mutation: true,
      );
      final created = (data['createMstrApprovalScopePattern'] as Map?)?['mstrApprovalScopePattern'] as Map?;
      if (created == null) throw StateError('承認の範囲を登録できませんでした');
      id = '${created['mstrApprovalScopePatternId']}';
    } else {
      id = record.id;
      await run(
        documentNodeMutationApprovalScopeLedgerPageEdit,
        {
          'mstrApprovalScopePatternId': id,
          'infoAccessPathApprovalId': t('access_path_approval'),
          'remarks': _GraphqlAccess.nullable(t('remarks')),
          'updateUserId': ?au?.staffId,
          'updateUserHistoryId': ?au?.staffHistoryId,
        },
        mutation: true,
      );
    }
    return (await findById(id)) ?? record;
  }

  @override
  Future<void> remove(String id) async {
    final au = await updater();
    await run(
      documentNodeMutationApprovalScopeLedgerPageRemove,
      {
        'mstrApprovalScopePatternId': id,
        'remove': true,
        'updateUserId': ?au?.staffId,
        'updateUserHistoryId': ?au?.staffHistoryId,
      },
      mutation: true,
    );
  }

  @override
  Future<List<EntityRecord>> find({required int take, int skip = 0, Expression? predicate, SortExpression? orders}) async => [
    for (final n in await _nodes(take, skip, const {})) _record(n),
  ];

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _nodes(1, 0, {
      'mstrApprovalScopePatternId': {'equalTo': id},
    });
    return rows.isEmpty ? null : _record(rows.first);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async {
    if (parentId == null) return const [];
    return [
      for (final n in await _nodes(500, 0, {
        'mstrApprovalPatternId': {'equalTo': parentId},
      }))
        _record(n),
    ];
  }
}
