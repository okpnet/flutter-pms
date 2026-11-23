import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:gql/ast.dart' show DocumentNode;
import 'dart:convert';

import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;

/// 承認パターンの台帳(`approvalpattern`。DB の `mstr_approval_pattern`)の取得元(GraphQL 版。書き込みできる)。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」):
/// 1. 名称・読みは、共通関数 `shared_appellation_save` で作る・変える(言語 `ja` の値だけ入れ替わる。更新は、変わった項目だけ送る)。
/// 2. 返った呼称の ID を、承認パターンの登録(`ApprovalPatternLedgerPageCreate`)・更新(`...Edit`。変えた列だけ)に渡す。
/// 3. 保存のあと読み直して返す。削除は論理削除(`...Remove`。承認の段は残る)。
/// 呼称と本体は別のトランザクションのため、本体の登録が失敗すると呼称が参照されない行として残る(許容する)。
///
/// 承認の段(部署・役職・順位)は、この台帳ではなく専用の画面(`ApprovalStepsPage`。段のドラッグ並べ替え)で編集する。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class ApprovalPatternRepository implements IEntityRepository {
  ApprovalPatternRepository(this.definition, this.client, this._language, this.auditUser);

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final Future<String> Function() _language;
  final AuditUserSource? auditUser;

  Future<AuditUser?> _updater() async => auditUser == null ? null : auditUser!();

  Future<Map<String, dynamic>> _run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
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

  static String _text(Object? v) => v == null ? '' : '$v';

  /// 辞書の値(読み込みで言語 `ja` に絞り込み済み)。
  static String _dict(Object? dictionary) {
    if (dictionary is! Map) return '';
    final nodes = (dictionary['value'] as Map?)?['nodes'];
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
  }

  EntityRecord _record(Map<dynamic, dynamic> n) {
    final l = n['labels'];
    return EntityRecord(
      id: '${n['mstrApprovalPatternId']}',
      values: {
        'name': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryNameId'] : null),
        'pronunciation': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryPronunciationId'] : null),
        'remarks': _text(n['remarks']),
      },
    );
  }

  Future<List<Map<dynamic, dynamic>>> _nodes(int first, int offset, Map<String, dynamic> filter) async {
    final data = await _run(documentNodeQueryApprovalPatternLedgerPageRead, {
      'first': first,
      'offset': offset,
      'languageCodeId': await _language(),
      if (filter.isNotEmpty) 'filter': filter,
    });
    final nodes = (data['allMstrApprovalPatterns'] as Map?)?['nodes'] as List? ?? const [];
    return [...nodes.whereType<Map>()];
  }

  Future<String> _saveAppellation(String? existingId, {Object? name, Object? pronunciation, AuditUser? au}) async {
    final data = await _run(
      documentNodeMutationApprovalPatternAppellationSavePageCall,
      {
        'pAppellationId': existingId,
        'pName': name == null ? null : jsonEncode(name),
        'pPronunciation': pronunciation == null ? null : jsonEncode(pronunciation),
        'pStaffId': au?.staffId,
        'pStaffHistoryId': au?.staffHistoryId,
      },
      mutation: true,
    );
    final id = ((data['sharedAppellationSave'] as Map?)?['sharedAppellation'] as Map?)?['sharedAppellationsId'];
    if (id == null) throw StateError('呼称を保存できませんでした');
    return '$id';
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    if (t('name').isEmpty) throw const EntityValidationException({'name': EntityFieldError.required});

    final isNew = record.id.isEmpty;
    final node = isNew ? null : (await _nodes(1, 0, {'mstrApprovalPatternId': {'equalTo': record.id}})).firstOrNull;
    if (!isNew && node == null) throw StateError('承認パターンが見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) => isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await _updater();
    final labels = node?['labels'];

    final namesId = await _saveAppellation(
      labels is Map ? labels['sharedAppellationsId'] as String? : null,
      name: isNew || changed('name') ? {'ja': t('name')} : null,
      pronunciation: changed('pronunciation') ? {'ja': t('pronunciation')} : null,
      au: au,
    );

    final String id;
    if (isNew) {
      final data = await _run(
        documentNodeMutationApprovalPatternLedgerPageCreate,
        {
          'names': namesId,
          'remarks': t('remarks').isEmpty ? null : t('remarks'),
          'updateUserId': ?au?.staffId,
          'updateUserHistoryId': ?au?.staffHistoryId,
        },
        mutation: true,
      );
      final created = (data['createMstrApprovalPattern'] as Map?)?['mstrApprovalPattern'] as Map?;
      if (created == null) throw StateError('承認パターンを登録できませんでした');
      id = '${created['mstrApprovalPatternId']}';
    } else {
      id = record.id;
      if (changed('remarks') || namesId != (labels is Map ? labels['sharedAppellationsId'] : null)) {
        await _run(
          documentNodeMutationApprovalPatternLedgerPageEdit,
          {
            'mstrApprovalPatternId': id,
            'names': namesId,
            if (changed('remarks')) 'remarks': t('remarks').isEmpty ? null : t('remarks'),
            'updateUserId': ?au?.staffId,
            'updateUserHistoryId': ?au?.staffHistoryId,
          },
          mutation: true,
        );
      }
    }
    return (await findById(id)) ?? record;
  }

  /// 論理削除(`remove = true`)。承認の段は残す。標準の承認パターン(`info_app` の対象ごとの列)が指しているときは、使用中として止める
  /// ([EntityInUseException]。削除すると、その対象は承認不要として扱われてしまうため)。ほかの実体からの参照は、呼び出し側([EntityCatalog])が判定する。
  @override
  Future<void> remove(String id) async {
    if (await _usedAsDefault(id)) throw EntityInUseException(definition.key, id, EntityBlockReason.referenced);
    final au = await _updater();
    await _run(
      documentNodeMutationApprovalPatternLedgerPageRemove,
      {
        'mstrApprovalPatternId': id,
        'remove': true,
        'updateUserId': ?au?.staffId,
        'updateUserHistoryId': ?au?.staffHistoryId,
      },
      mutation: true,
    );
  }

  /// 標準の承認パターン(`info_app` の対象ごとの列)のどれかが [id] か。
  Future<bool> _usedAsDefault(String id) async {
    final data = await _run(documentNodeQueryApprovalDefaultsPageRead, {'first': 1});
    final apps = (data['allInfoApps'] as Map?)?['nodes'] as List? ?? const [];
    for (final app in apps.whereType<Map>()) {
      if (app.entries.any((e) => e.key.toString().endsWith('ApprovalPatternId') && e.value == id)) return true;
    }
    return false;
  }

  @override
  Future<List<EntityRecord>> find({required int take, int skip = 0, Expression? predicate, SortExpression? orders}) async => [
    for (final n in await _nodes(take, skip, const {})) _record(n),
  ];

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _nodes(1, 0, {'mstrApprovalPatternId': {'equalTo': id}});
    return rows.isEmpty ? null : _record(rows.first);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
