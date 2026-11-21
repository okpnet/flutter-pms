import 'dart:convert';

import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;

import '../approval_steps/approval_steps_gateway.dart';
import 'organization_repositories.dart' show LanguageCodeCache;

/// 承認の段の GraphQL 版の取得元。モデルは `organization_model` の `ApprovalStepPage`(段 = 承認パターン明細 + 承認)・
/// `ApprovalStepApprovalPage*`(承認 = 部署・役職・順位)・`ApprovalStepDetailPage*`(承認パターン明細)・選択肢(部署・役職)。
///
/// 段の追加は「呼称 → 承認 → 承認パターン明細」の順(別のトランザクション。途中で失敗すると、参照されない行が残るのを許容する)。
/// 順位の付け替えは、変わった段の承認(`priority`)だけを更新する。削除は論理削除(承認パターン明細と承認)。
/// 更新者つき([auditUser])。通信の失敗は例外のまま投げる(画面が「できませんでした」にする)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [ApprovalStep] を変換する)
class GraphqlApprovalStepsGateway implements IApprovalStepsGateway {
  GraphqlApprovalStepsGateway(this.client, {this.auditUser}) : _languageCache = LanguageCodeCache(client);

  final GraphQLClient client;
  final LanguageCodeCache _languageCache;

  Future<String> _language() => _languageCache.id;
  final AuditUserSource? auditUser;

  List<ApprovalStepOption>? _departments;
  List<ApprovalStepOption>? _positions;

  Future<Map<String, dynamic>> _run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<AuditUser?> _updater() async => auditUser == null ? null : auditUser!();

  static String _dictionary(Object? dict) {
    if (dict is! Map) return '';
    final nodes = (dict['value'] as Map?)?['nodes'];
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
  }

  static String _name(Object? labels) => labels is! Map ? '' : _dictionary(labels['sharedDictionaryBySharedDictionaryNameId']);

  @override
  Future<List<ApprovalStep>> load(String patternId) async {
    final data = await _run(documentNodeQueryApprovalStepPageRead, {
      'first': 500,
      'languageCodeId': await _language(),
      'filter': {
        'mstrApprovalPatternId': {'equalTo': patternId},
      },
    });
    final nodes = (data['allMstrApprovalPatternDetails'] as Map?)?['nodes'] as List? ?? const [];
    final steps = <ApprovalStep>[];
    for (final n in nodes.whereType<Map>()) {
      final a = n['approval'];
      if (a is! Map) continue;
      steps.add(
        ApprovalStep(
          id: '${n['mstrApprovalPatternDetailId']}',
          approvalId: '${n['mstrApprovalId']}',
          priority: (a['priority'] as num?)?.toInt() ?? 32767,
          departmentId: a['infoDepartmentId'] as String?,
          positionId: a['infoPositionId'] as String?,
          name: _name(a['labels']),
        ),
      );
    }
    steps.sort((a, b) => a.priority.compareTo(b.priority));
    return steps;
  }

  Future<List<ApprovalStepOption>> _options(DocumentNode document, String listKey, String idKey) async {
    final data = await _run(document, {'first': 500, 'languageCodeId': await _language()});
    final nodes = (data[listKey] as Map?)?['nodes'] as List? ?? const [];
    return [
      for (final n in nodes.whereType<Map>()) ApprovalStepOption(id: '${n[idKey]}', name: _name(n['labels'])),
    ];
  }

  @override
  Future<List<ApprovalStepOption>> departments() async =>
      _departments ??= await _options(documentNodeQueryApprovalStepDepartmentOptionPageRead, 'allInfoDepartments', 'infoDepartmentId');

  @override
  Future<List<ApprovalStepOption>> positions() async =>
      _positions ??= await _options(documentNodeQueryApprovalStepPositionOptionPageRead, 'allInfoPositions', 'infoPositionId');

  /// 段の名称(承認の呼称)。「部署 役職」。
  Future<String> _stepName(String? departmentId, String? positionId) async {
    final d = (await departments()).where((o) => o.id == departmentId).map((o) => o.name);
    final p = (await positions()).where((o) => o.id == positionId).map((o) => o.name);
    final text = [...d, ...p].where((s) => s.isNotEmpty).join(' ');
    return text.isEmpty ? '承認' : text;
  }

  Future<String> _saveAppellation(String name, AuditUser? au) async {
    final data = await _run(
      documentNodeMutationApprovalPatternAppellationSavePageCall,
      {
        'pName': jsonEncode({'ja': name}),
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
  Future<void> add(String patternId, {required String? departmentId, required String? positionId, required int priority}) async {
    final au = await _updater();
    final names = await _saveAppellation(await _stepName(departmentId, positionId), au);
    final created = await _run(
      documentNodeMutationApprovalStepApprovalPageCreate,
      {
        'infoDepartmentId': departmentId,
        'infoPositionId': positionId,
        'priority': priority,
        'names': names,
        'updateUserId': ?au?.staffId,
        'updateUserHistoryId': ?au?.staffHistoryId,
      },
      mutation: true,
    );
    final approvalId = ((created['createMstrApproval'] as Map?)?['mstrApproval'] as Map?)?['mstrApprovalId'];
    if (approvalId == null) throw StateError('承認を登録できませんでした');
    await _run(
      documentNodeMutationApprovalStepDetailPageCreate,
      {
        'mstrApprovalPatternId': patternId,
        'mstrApprovalId': approvalId,
        'updateUserId': ?au?.staffId,
        'updateUserHistoryId': ?au?.staffHistoryId,
      },
      mutation: true,
    );
  }

  @override
  Future<void> update(ApprovalStep step, {required String? departmentId, required String? positionId}) async {
    final au = await _updater();
    await _run(
      documentNodeMutationApprovalStepApprovalPageEdit,
      {
        'mstrApprovalId': step.approvalId,
        'infoDepartmentId': departmentId,
        'infoPositionId': positionId,
        'updateUserId': ?au?.staffId,
        'updateUserHistoryId': ?au?.staffHistoryId,
      },
      mutation: true,
    );
  }

  @override
  Future<void> reorder(List<ApprovalStep> ordered) async {
    final au = await _updater();
    final before = {for (final s in ordered) s.id: s.priority};
    for (final s in renumberSteps(ordered)) {
      if (before[s.id] == s.priority) continue;
      await _run(
        documentNodeMutationApprovalStepApprovalPageEdit,
        {
          'mstrApprovalId': s.approvalId,
          'priority': s.priority,
          'updateUserId': ?au?.staffId,
          'updateUserHistoryId': ?au?.staffHistoryId,
        },
        mutation: true,
      );
    }
  }

  @override
  Future<void> remove(ApprovalStep step) async {
    final au = await _updater();
    await _run(
      documentNodeMutationApprovalStepDetailPageRemove,
      {
        'mstrApprovalPatternDetailId': step.id,
        'remove': true,
        'updateUserId': ?au?.staffId,
        'updateUserHistoryId': ?au?.staffHistoryId,
      },
      mutation: true,
    );
    await _run(
      documentNodeMutationApprovalStepApprovalPageRemove,
      {
        'mstrApprovalId': step.approvalId,
        'remove': true,
        'updateUserId': ?au?.staffId,
        'updateUserHistoryId': ?au?.staffHistoryId,
      },
      mutation: true,
    );
  }
}
