import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:localized_values/localized_values.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;
import 'package:resource_model/resource_model.dart';

/// 力量(`capability`。DB の `mstr_capability`)の取得元(GraphQL 版。書き込みできる)。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」。`system` の単位が前例):
/// 1. 名称・読み(呼称)と詳細(文章)は、共通関数 `shared_appellation_save`・`shared_text_save` で作る・変える
///    (渡した言語 `ja` の値だけ入れ替わる。更新は、読み込んだ値から変わった項目だけ送る)。
/// 2. 返った ID を、本体の `names`・`details` に渡して、登録(`CapabilityPageCreate`)・更新(`CapabilityPageEdit`)する。
/// 3. 保存のあと読み直して返す(同じ値の更新は履歴のトリガーが握りつぶし、応答の行が null になるため)。
/// 削除は論理削除(`CapabilityPageRemove`。`remove = true`)。更新者は、ログイン中の担当者を [AuditUserSource] で受けて送る。
/// コードの重複は、部分一意索引(`mstr_capability_ix_code_active`)のエラーを、コードの項目の「重複」にする。
/// 記号(`symbol`)は DB が採番する。生成された型は、この中だけで使い、外へ出さない。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class CapabilityRepository implements IEntityRepository {
  CapabilityRepository(
    this.definition,
    this.client,
    this._language,
    this.auditUser,
  );

  @override
  final EntityDefinition definition;
  final GraphQLClient client;

  /// 言語コード `ja` の ID(読み込みの必須の条件)。
  final Future<String> Function() _language;
  final AuditUserSource? auditUser;

  Future<AuditUser?> _updater() async =>
      auditUser == null ? null : auditUser!();

  /// DB のエラー(PostGraphile は errcode を返さないため、文で見分ける)を、画面の検証エラーにする。それ以外はそのまま投げる。
  Never _throwMapped(OperationException e) {
    final message = e.graphqlErrors.map((x) => x.message).join(' ');
    if (message.contains('名称には、いずれかの言語に値が必要')) {
      throw const EntityValidationException({
        'name': EntityFieldError.required,
      });
    }
    if (message.contains('mstr_capability_ix_code_active')) {
      throw const EntityValidationException({
        'code': EntityFieldError.duplicate,
      });
    }
    throw e;
  }

  static String _text(Object? v) => v == null ? '' : '$v';

  /// DB の numeric(文字列)を、画面の数値の形にする(小数の 0 は省く)。
  static String _number(Object? v) {
    final s = _text(v);
    if (s.isEmpty) return '';
    final n = num.tryParse(s);
    if (n == null) return s;
    return n == n.roundToDouble() ? '${n.round()}' : '$n';
  }

  static String _dict(dynamic dictionary) =>
      LocalizedValues.fromDictionary(dictionary).resolve('ja');

  EntityRecord _record(Query$CapabilityPageRead$allMstrCapabilities$nodes n) {
    final l = n.labels;
    final detail = n.detailTexts?.value.nodes;
    return EntityRecord(
      id: n.mstrCapabilityId,
      values: {
        'code': _text(n.code),
        'name': _dict(l?.sharedDictionaryBySharedDictionaryNameId),
        'pronunciation': _dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'detail': detail == null || detail.isEmpty
            ? ''
            : _text(detail.first?.leadText),
        'reference_value': _number(n.referenceValue),
        'max': _number(n.max),
        'min': _number(n.min),
        'step': _number(n.step),
        'remarks': _text(n.remarks),
      },
    );
  }

  Future<List<Query$CapabilityPageRead$allMstrCapabilities$nodes>> _readNodes(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$CapabilityPageRead(
      Options$Query$CapabilityPageRead(
        variables: Variables$Query$CapabilityPageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await _language(),
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allMstrCapabilities?.nodes ??
              const <Query$CapabilityPageRead$allMstrCapabilities$nodes?>[])
        ?n,
    ];
  }

  Future<Query$CapabilityPageRead$allMstrCapabilities$nodes?> _readNode(
    String id,
  ) async {
    final rows = await _readNodes(1, 0, {
      'mstrCapabilityId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{
      if (t('code').isEmpty) 'code': EntityFieldError.required,
      if (t('name').isEmpty) 'name': EntityFieldError.required,
      if (t('reference_value').isEmpty)
        'reference_value': EntityFieldError.required,
      for (final k in ['reference_value', 'max', 'min', 'step'])
        if (t(k).isNotEmpty && num.tryParse(t(k)) == null)
          k: EntityFieldError.invalidNumber,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final isNew = record.id.isEmpty;
    final node = isNew ? null : await _readNode(record.id);
    if (!isNew && node == null) throw StateError('力量が見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) =>
        isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await _updater();

    // 1. 呼称(名称・読み)
    var namesId = node?.labels?.sharedAppellationsId;
    final nameChanged = isNew || changed('name');
    final pronunciationChanged = changed('pronunciation');
    if (nameChanged || pronunciationChanged) {
      final result = await client.mutate$CapabilityAppellationSavePageCall(
        Options$Mutation$CapabilityAppellationSavePageCall(
          variables: Variables$Mutation$CapabilityAppellationSavePageCall(
            pAppellationId: namesId,
            pName: nameChanged ? {'ja': t('name')} : null,
            pPronunciation: pronunciationChanged
                ? {'ja': t('pronunciation')}
                : null,
            pStaffId: au?.staffId,
            pStaffHistoryId: au?.staffHistoryId,
          ),
        ),
      );
      final e = result.exception;
      if (e != null) _throwMapped(e);
      namesId = result
          .parsedData
          ?.sharedAppellationSave
          ?.sharedAppellation
          ?.sharedAppellationsId;
      if (namesId == null) throw StateError('力量の名称を保存できませんでした');
    }

    // 2. 文章(詳細)。変えたときだけ送る(読み込みは先頭の文だけのため)
    final existingDetailsId = node?.detailTexts?.sharedTextId;
    var detailsId = existingDetailsId;
    if (changed('detail')) {
      final result = await client.mutate$CapabilityTextSavePageCall(
        Options$Mutation$CapabilityTextSavePageCall(
          variables: Variables$Mutation$CapabilityTextSavePageCall(
            pTextId: existingDetailsId,
            pValues: {'ja': t('detail')},
            pStaffId: au?.staffId,
            pStaffHistoryId: au?.staffHistoryId,
          ),
        ),
      );
      final e = result.exception;
      if (e != null) _throwMapped(e);
      detailsId = result.parsedData?.sharedTextSave?.sharedText?.sharedTextId;
      if (detailsId == null) throw StateError('力量の詳細を保存できませんでした');
    }

    // 3. 本体(平らな列だけ)。更新は、渡した列だけが変わる(null は消す)
    final String id;
    if (isNew) {
      final result = await client.mutate$CapabilityPageCreate(
        Options$Mutation$CapabilityPageCreate(
          variables: Variables$Mutation$CapabilityPageCreate.fromJson({
            'code': t('code'),
            'names': namesId,
            'details': ?detailsId,
            'referenceValue': t('reference_value'),
            if (t('max').isNotEmpty) 'max': t('max'),
            if (t('min').isNotEmpty) 'min': t('min'),
            if (t('step').isNotEmpty) 'step': t('step'),
            if (t('remarks').isNotEmpty) 'remarks': t('remarks'),
            if (au != null) 'updateUserId': au.staffId,
            if (au != null) 'updateUserHistoryId': au.staffHistoryId,
          }),
        ),
      );
      final e = result.exception;
      if (e != null) _throwMapped(e);
      final created = result.parsedData?.createMstrCapability?.mstrCapability;
      if (created == null) throw StateError('力量を登録できませんでした');
      id = created.mstrCapabilityId;
    } else {
      id = record.id;
      String? nullable(String key) => t(key).isEmpty ? null : t(key);
      final patch = <String, dynamic>{
        if (changed('code')) 'code': t('code'),
        if (detailsId != existingDetailsId) 'details': detailsId,
        if (changed('reference_value')) 'referenceValue': t('reference_value'),
        if (changed('max')) 'max': nullable('max'),
        if (changed('min')) 'min': nullable('min'),
        if (changed('step')) 'step': nullable('step'),
        if (changed('remarks')) 'remarks': nullable('remarks'),
      };
      if (patch.isNotEmpty) {
        final result = await client.mutate$CapabilityPageEdit(
          Options$Mutation$CapabilityPageEdit(
            variables: Variables$Mutation$CapabilityPageEdit.fromJson({
              'mstrCapabilityId': id,
              ...patch,
              if (au != null) 'updateUserId': au.staffId,
              if (au != null) 'updateUserHistoryId': au.staffHistoryId,
            }),
          ),
        );
        final e = result.exception;
        if (e != null) _throwMapped(e);
      }
    }
    return (await findById(id)) ?? record;
  }

  /// 論理削除(`remove = true`)。物理削除はしない。使用中かの判定は呼び出し側([EntityCatalog])が行う。
  @override
  Future<void> remove(String id) async {
    final au = await _updater();
    final result = await client.mutate$CapabilityPageRemove(
      Options$Mutation$CapabilityPageRemove(
        variables: Variables$Mutation$CapabilityPageRemove(
          mstrCapabilityId: id,
          remove: true,
          updateUserId: au?.staffId,
          updateUserHistoryId: au?.staffHistoryId,
        ),
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
  }

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => [
    for (final n in await _readNodes(take, skip, const {})) _record(n),
  ];

  @override
  Future<EntityRecord?> findById(String id) async {
    final n = await _readNode(id);
    return n == null ? null : _record(n);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
