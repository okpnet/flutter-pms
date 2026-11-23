import 'dart:convert';

import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;

import 'graphql_access.dart';

/// 作業者(担当者。`staff`。DB の `info_staff`)の取得元(GraphQL 版。書き込みできる)。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」):
/// 1. 名称・読みは、共通関数 `shared_appellation_save`(言語 `ja`。更新は、変わった項目だけ送る)。返った ID を本体の `names` に渡す。
/// 2. 作業者を登録(`StaffLedgerPageCreate`。会社は 1 社だけの前提で最初の会社)・更新(`StaffLedgerPageEdit`。変えた列だけ)する。
/// 3. 保存のあと読み直して返す。削除は論理削除。
///
/// **作業者の登録は DB(担当者)が先**で、PocketBase のユーザーを作るのは別の操作(作業者の台帳の行の操作「ユーザーを作成」→ 管理者のユーザー作成の
/// 画面。返った担当者の ID が PocketBase の `app_user_id` になる。ルートの CLAUDE.md「作業者の新規登録とログインの開始」)。
/// コード(`no`)の重複(`info_staff_ix_code_active`)は、コードの項目の重複エラー。名称・読み・性別・電話などは、画面の項目のとおり。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class StaffRepository with GraphqlAccess implements IEntityRepository {
  StaffRepository(this.definition, this.client, this._language, this.auditUser);

  @override
  final EntityDefinition definition;
  @override
  final GraphQLClient client;
  @override
  final AuditUserSource? auditUser;
  final Future<String> Function() _language;

  static String _dict(Object? dictionary) {
    if (dictionary is! Map) return '';
    final value = dictionary['value'];
    final nodes = value is Map ? value['nodes'] : null;
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
  }

  EntityRecord _record(Map<dynamic, dynamic> n) {
    final l = n['labels'];
    return EntityRecord(
      id: '${n['infoStaffId']}',
      values: {
        'no': GraphqlAccess.text(n['code']),
        'name': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryNameId'] : null),
        'pronunciation': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryPronunciationId'] : null),
        'sex': GraphqlAccess.text(n['sex']),
        'phone': GraphqlAccess.text(n['phone']),
        'private_phone': GraphqlAccess.text(n['privatePhone']),
        'symbol': GraphqlAccess.text(n['symbol']),
        'remarks': GraphqlAccess.text(n['remarks']),
      },
    );
  }

  Future<List<Map<dynamic, dynamic>>> _nodes(int first, int offset, Map<String, dynamic> filter) async {
    final data = await run(documentNodeQueryStaffPageRead, {
      'first': first,
      'offset': offset,
      'languageCodeId': await _language(),
      if (filter.isNotEmpty) 'filter': filter,
    });
    return [...((data['allInfoStaffs'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>()];
  }

  /// 会社(1 社だけの前提)の ID。
  Future<String> _companyId() async {
    final data = await run(documentNodeQueryCompanyPageRead, {'first': 1, 'offset': 0, 'languageCodeId': await _language()});
    final nodes = (data['allInfoCompanies'] as Map?)?['nodes'] as List? ?? const [];
    final id = nodes.isEmpty ? null : (nodes.first as Map)['infoCompanyId'];
    if (id == null) throw StateError('会社が登録されていません');
    return '$id';
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{
      if (t('no').isEmpty) 'no': EntityFieldError.required,
      if (t('name').isEmpty) 'name': EntityFieldError.required,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final isNew = record.id.isEmpty;
    final node = isNew ? null : (await _nodes(1, 0, {'infoStaffId': {'equalTo': record.id}})).firstOrNull;
    if (!isNew && node == null) throw StateError('作業者が見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) => isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await updater();
    final labels = node?['labels'];
    final existingNames = labels is Map ? labels['sharedAppellationsId'] as String? : null;

    // 1. 名称・読みの呼称
    String? namesId = existingNames;
    if (isNew || changed('name') || changed('pronunciation')) {
      final saved = await run(
        documentNodeMutationApprovalPatternAppellationSavePageCall,
        {
          'pAppellationId': existingNames,
          if (isNew || changed('name')) 'pName': jsonEncode({'ja': t('name')}),
          if (changed('pronunciation')) 'pPronunciation': jsonEncode({'ja': t('pronunciation')}),
          'pStaffId': au?.staffId,
          'pStaffHistoryId': au?.staffHistoryId,
        },
        mutation: true,
      );
      namesId = ((saved['sharedAppellationSave'] as Map?)?['sharedAppellation'] as Map?)?['sharedAppellationsId'] as String?;
      if (namesId == null) throw StateError('呼称を保存できませんでした');
    }

    // 2. 本体
    String? n(String key) => GraphqlAccess.nullable(t(key));
    final String id;
    try {
      if (isNew) {
        final data = await run(
          documentNodeMutationStaffLedgerPageCreate,
          {
            'infoCompanyId': await _companyId(),
            'code': t('no'),
            'names': namesId,
            'sex': n('sex'),
            'phone': n('phone'),
            'privatePhone': n('private_phone'),
            'remarks': n('remarks'),
            'updateUserId': ?au?.staffId,
            'updateUserHistoryId': ?au?.staffHistoryId,
          },
          mutation: true,
        );
        final created = (data['createInfoStaff'] as Map?)?['infoStaff'] as Map?;
        if (created == null) throw StateError('作業者を登録できませんでした');
        id = '${created['infoStaffId']}';
      } else {
        id = record.id;
        final patch = <String, dynamic>{
          if (changed('no')) 'code': t('no'),
          if (namesId != existingNames) 'names': namesId,
          if (changed('sex')) 'sex': n('sex'),
          if (changed('phone')) 'phone': n('phone'),
          if (changed('private_phone')) 'privatePhone': n('private_phone'),
          if (changed('remarks')) 'remarks': n('remarks'),
        };
        if (patch.isNotEmpty) {
          await run(
            documentNodeMutationStaffLedgerPageEdit,
            {'infoStaffId': id, ...patch, 'updateUserId': ?au?.staffId, 'updateUserHistoryId': ?au?.staffHistoryId},
            mutation: true,
          );
        }
      }
    } on OperationException catch (e) {
      if (e.graphqlErrors.any((x) => x.message.contains('info_staff_ix_code_active'))) {
        throw const EntityValidationException({'no': EntityFieldError.duplicate});
      }
      rethrow;
    }
    return (await findById(id)) ?? record;
  }

  /// 論理削除(`remove = true`)。使用中かの判定は呼び出し側([EntityCatalog])が行う。
  @override
  Future<void> remove(String id) async {
    final au = await updater();
    await run(
      documentNodeMutationStaffLedgerPageRemove,
      {'infoStaffId': id, 'remove': true, 'updateUserId': ?au?.staffId, 'updateUserHistoryId': ?au?.staffHistoryId},
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
      'infoStaffId': {'equalTo': id},
    });
    return rows.isEmpty ? null : _record(rows.first);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
