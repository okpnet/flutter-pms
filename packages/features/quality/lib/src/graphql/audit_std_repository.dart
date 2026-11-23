import 'dart:convert';

import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;
import 'package:quality_model/quality_model.dart';

import 'graphql_access.dart';

/// 監査標準(`auditstd`。DB の `mstr_audit_std`)の取得元(GraphQL 版。書き込みできる)。項目(`mstr_audit_std_checkitem`)の登録は、別の作業
/// (式 `formula_class`・型 `type_class` の種類が未決。`issue/20261123_0001.md`)。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」):
/// 1. 名称・読み・略称は `shared_appellation_save`、詳細は `shared_text_save`(言語 `ja`。変わった項目だけ送る)。返った ID を本体の `names`・`details` に渡す。
/// 2. 登録(`AuditStdLedgerPageCreate`)・更新(`AuditStdLedgerPageEdit`。変えた列だけ)・論理削除。更新者つき。保存のあと読み直して返す。
///
/// 詳細は、読み込みが先頭の文(`lead_text`)だけのため、**変えたときだけ**文章を保存する(開いて保存するだけでは、全文を上書きしない)。
/// 区分(`category`)は整数。監査から使われている監査標準は、削除できない(使用中)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class AuditStdRepository with GraphqlAccess implements IEntityRepository {
  AuditStdRepository(this.definition, this.client, this._language, this.auditUser);

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

  static String _lead(Object? text) {
    if (text is! Map) return '';
    final value = text['value'];
    final nodes = value is Map ? value['nodes'] : null;
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['leadText'] ?? ''}';
  }

  EntityRecord _record(Map<dynamic, dynamic> n) {
    final l = n['labels'];
    return EntityRecord(
      id: '${n['mstrAuditStdId']}',
      values: {
        'code': GraphqlAccess.text(n['code']),
        'control_code': GraphqlAccess.text(n['controlCode']),
        'name': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryNameId'] : null),
        'pronunciation': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryPronunciationId'] : null),
        'nickname': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryNicknameId'] : null),
        'category': GraphqlAccess.text(n['category']),
        'detail': _lead(n['detailTexts']),
        'remarks': GraphqlAccess.text(n['remarks']),
      },
    );
  }

  Future<List<Map<dynamic, dynamic>>> _nodes(int first, int offset, Map<String, dynamic> filter) async {
    final data = await run(documentNodeQueryAuditStdPageRead, {
      'first': first,
      'offset': offset,
      'languageCodeId': await _language(),
      if (filter.isNotEmpty) 'filter': filter,
    });
    return [...((data['allMstrAuditStds'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>()];
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{
      if (t('name').isEmpty) 'name': EntityFieldError.required,
      if (t('category').isNotEmpty && int.tryParse(t('category')) == null) 'category': EntityFieldError.invalidNumber,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final isNew = record.id.isEmpty;
    final node = isNew ? null : (await _nodes(1, 0, {'mstrAuditStdId': {'equalTo': record.id}})).firstOrNull;
    if (!isNew && node == null) throw StateError('監査標準が見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) => isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await updater();
    final labels = node?['labels'];
    final existingNames = labels is Map ? labels['sharedAppellationsId'] as String? : null;
    final detailTexts = node?['detailTexts'];
    final existingDetails = detailTexts is Map ? detailTexts['sharedTextId'] as String? : null;

    // 1. 呼称(名称・読み・略称)・文章(詳細)
    String? namesId = existingNames;
    if (isNew || changed('name') || changed('pronunciation') || changed('nickname')) {
      final saved = await run(
        documentNodeMutationAuditStdAppellationSavePageCall,
        {
          'pAppellationId': existingNames,
          if (isNew || changed('name')) 'pName': jsonEncode({'ja': t('name')}),
          if (changed('pronunciation')) 'pPronunciation': jsonEncode({'ja': t('pronunciation')}),
          if (changed('nickname')) 'pNickname': jsonEncode({'ja': t('nickname')}),
          'pStaffId': au?.staffId,
          'pStaffHistoryId': au?.staffHistoryId,
        },
        mutation: true,
      );
      namesId = ((saved['sharedAppellationSave'] as Map?)?['sharedAppellation'] as Map?)?['sharedAppellationsId'] as String?;
      if (namesId == null) throw StateError('呼称を保存できませんでした');
    }
    String? detailsId = existingDetails;
    if (changed('detail')) {
      final saved = await run(
        documentNodeMutationAuditStdTextSavePageCall,
        {
          'pTextId': existingDetails,
          'pValues': jsonEncode({'ja': t('detail')}),
          'pStaffId': au?.staffId,
          'pStaffHistoryId': au?.staffHistoryId,
        },
        mutation: true,
      );
      detailsId = ((saved['sharedTextSave'] as Map?)?['sharedText'] as Map?)?['sharedTextId'] as String?;
    }

    // 2. 本体
    String? n(String key) => GraphqlAccess.nullable(t(key));
    int? category() => t('category').isEmpty ? null : int.parse(t('category'));
    final String id;
    if (isNew) {
      final data = await run(
        documentNodeMutationAuditStdLedgerPageCreate,
        {
          'code': n('code'),
          'controlCode': n('control_code'),
          'category': category(),
          'names': namesId,
          'details': detailsId,
          'remarks': n('remarks'),
          'updateUserId': ?au?.staffId,
          'updateUserHistoryId': ?au?.staffHistoryId,
        },
        mutation: true,
      );
      final created = (data['createMstrAuditStd'] as Map?)?['mstrAuditStd'] as Map?;
      if (created == null) throw StateError('監査標準を登録できませんでした');
      id = '${created['mstrAuditStdId']}';
    } else {
      id = record.id;
      final patch = <String, dynamic>{
        if (changed('code')) 'code': n('code'),
        if (changed('control_code')) 'controlCode': n('control_code'),
        if (changed('category')) 'category': category(),
        if (namesId != existingNames) 'names': namesId,
        if (detailsId != existingDetails) 'details': detailsId,
        if (changed('remarks')) 'remarks': n('remarks'),
      };
      if (patch.isNotEmpty) {
        await run(
          documentNodeMutationAuditStdLedgerPageEdit,
          {'mstrAuditStdId': id, ...patch, 'updateUserId': ?au?.staffId, 'updateUserHistoryId': ?au?.staffHistoryId},
          mutation: true,
        );
      }
    }
    return (await findById(id)) ?? record;
  }

  /// 論理削除。監査(`trans_audit`)から使われているときは、使用中として止める(削除の通信はしない)。
  @override
  Future<void> remove(String id) async {
    final used = await run(documentNodeQueryAuditPageRead, {
      'first': 1,
      'languageCodeId': await _language(),
      'filter': {
        'auditStdId': {'equalTo': id},
      },
    });
    final nodes = (used['allTransAudits'] as Map?)?['nodes'] as List? ?? const [];
    if (nodes.isNotEmpty) throw EntityInUseException(definition.key, id, EntityBlockReason.referenced);
    final au = await updater();
    await run(
      documentNodeMutationAuditStdPageRemove,
      {'mstrAuditStdId': id, 'remove': true, 'updateUserId': ?au?.staffId, 'updateUserHistoryId': ?au?.staffHistoryId},
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
      'mstrAuditStdId': {'equalTo': id},
    });
    return rows.isEmpty ? null : _record(rows.first);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
