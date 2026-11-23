import 'dart:convert';

import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;
import 'package:quality_model/quality_model.dart';

import 'audit_check_expr.dart';
import 'graphql_access.dart';

/// 監査標準の項目(`auditstdcheck`。DB の `mstr_audit_std_checkitem`)の取得元(GraphQL 版。書き込みできる)。
///
/// 設備の点検整備項目と同じ構造: 項目(コード・管理コード・名称・読み・略称・詳細)+ 判定の式 `expr`(条件 = 演算子 + 値の JSON。`FieldKind.condition`)。
/// 式は `arg_class` に条件の JSON を書き、`formula_class`・`type_class`(NOT NULL の列)は [AuditCheckExpr] で導く。判定は `arg_class` だけで行う。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」):
/// 1. 名称・読み・略称は `shared_appellation_save`、詳細は `shared_text_save`(言語 `ja`。変わった項目だけ送る)。返った ID を本体の `names`・`details` に渡す。
/// 2. 登録(`AuditCheckitemLedgerPageCreate`)・更新(`...Edit`。変えた列だけ)・論理削除。更新者つき。保存のあと読み直して返す。
/// 詳細は、読み込みが先頭の文だけのため、**変えたときだけ**保存する。監査標準(`mstr_audit_std_id`)は ID で参照する(`quality` の `auditstd`)。
/// 項目を変えても、すでに実施した監査の項目(履歴 ID + ID で参照)は、そのときの履歴のまま。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class AuditCheckitemRepository with GraphqlAccess implements IEntityRepository {
  AuditCheckitemRepository(this.definition, this.client, this._language, this.auditUser);

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
      id: '${n['mstrAuditStdCheckitemId']}',
      values: {
        'code': GraphqlAccess.text(n['code']),
        'control_code': GraphqlAccess.text(n['controlCode']),
        'name': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryNameId'] : null),
        'pronunciation': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryPronunciationId'] : null),
        'nickname': _dict(l is Map ? l['sharedDictionaryBySharedDictionaryNicknameId'] : null),
        'mstr_audit_std_id': GraphqlAccess.text(n['mstrAuditStdId']),
        'detail': _lead(n['detailTexts']),
        'expr': AuditCheckExpr.fromArgClass(n['argClass']),
        'remarks': GraphqlAccess.text(n['remarks']),
      },
    );
  }

  Future<List<Map<dynamic, dynamic>>> _nodes(int first, int offset, Map<String, dynamic> filter) async {
    final data = await run(documentNodeQueryAuditCheckitemLedgerPageRead, {
      'first': first,
      'offset': offset,
      'languageCodeId': await _language(),
      if (filter.isNotEmpty) 'filter': filter,
    });
    return [...((data['allMstrAuditStdCheckitems'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>()];
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final expr = AuditCheckExpr.toColumns(t('expr'));
    final errors = <String, EntityFieldError>{
      if (t('name').isEmpty) 'name': EntityFieldError.required,
      if (t('mstr_audit_std_id').isEmpty) 'mstr_audit_std_id': EntityFieldError.required,
      if (expr == null) 'expr': EntityFieldError.invalidCondition,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final isNew = record.id.isEmpty;
    final node = isNew ? null : (await _nodes(1, 0, {'mstrAuditStdCheckitemId': {'equalTo': record.id}})).firstOrNull;
    if (!isNew && node == null) throw StateError('監査標準の項目が見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) => isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await updater();
    final labels = node?['labels'];
    final existingNames = labels is Map ? labels['sharedAppellationsId'] as String? : null;
    final detailTexts = node?['detailTexts'];
    final existingDetails = detailTexts is Map ? detailTexts['sharedTextId'] as String? : null;

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

    String? n(String key) => GraphqlAccess.nullable(t(key));
    final String id;
    if (isNew) {
      final data = await run(
        documentNodeMutationAuditCheckitemLedgerPageCreate,
        {
          'mstrAuditStdId': t('mstr_audit_std_id'),
          'code': n('code'),
          'controlCode': n('control_code'),
          'names': namesId,
          'details': detailsId,
          'typeClass': expr!.typeClass,
          'formulaClass': expr.formulaClass,
          'argClass': expr.argClass,
          'remarks': n('remarks'),
          'updateUserId': ?au?.staffId,
          'updateUserHistoryId': ?au?.staffHistoryId,
        },
        mutation: true,
      );
      final created = (data['createMstrAuditStdCheckitem'] as Map?)?['mstrAuditStdCheckitem'] as Map?;
      if (created == null) throw StateError('監査標準の項目を登録できませんでした');
      id = '${created['mstrAuditStdCheckitemId']}';
    } else {
      id = record.id;
      final patch = <String, dynamic>{
        if (changed('mstr_audit_std_id')) 'mstrAuditStdId': t('mstr_audit_std_id'),
        if (changed('code')) 'code': n('code'),
        if (changed('control_code')) 'controlCode': n('control_code'),
        if (namesId != existingNames) 'names': namesId,
        if (detailsId != existingDetails) 'details': detailsId,
        if (changed('expr')) ...{'typeClass': expr!.typeClass, 'formulaClass': expr.formulaClass, 'argClass': expr.argClass},
        if (changed('remarks')) 'remarks': n('remarks'),
      };
      if (patch.isNotEmpty) {
        await run(
          documentNodeMutationAuditCheckitemLedgerPageEdit,
          {'mstrAuditStdCheckitemId': id, ...patch, 'updateUserId': ?au?.staffId, 'updateUserHistoryId': ?au?.staffHistoryId},
          mutation: true,
        );
      }
    }
    return (await findById(id)) ?? record;
  }

  /// 論理削除。実施した監査の項目は、履歴(ID + 履歴 ID)で参照しているため、そのまま残る。
  @override
  Future<void> remove(String id) async {
    final au = await updater();
    await run(
      documentNodeMutationAuditCheckitemLedgerPageRemove,
      {'mstrAuditStdCheckitemId': id, 'remove': true, 'updateUserId': ?au?.staffId, 'updateUserHistoryId': ?au?.staffHistoryId},
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
      'mstrAuditStdCheckitemId': {'equalTo': id},
    });
    return rows.isEmpty ? null : _record(rows.first);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
