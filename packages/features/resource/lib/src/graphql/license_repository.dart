import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:localized_values/localized_values.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;
import 'package:resource_model/resource_model.dart';

/// 資格(`license`。DB の `mstr_license`)の取得元(GraphQL 版。書き込みできる)。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」。`system` の単位が前例):
/// 1. 名称・読み(呼称)と詳細(文章)は、共通関数 `shared_appellation_save`・`shared_text_save` で作る・変える
///    (渡した言語 `ja` の値だけ入れ替わる。更新は、読み込んだ値から変わった項目だけ送る)。
/// 2. 返った ID を、本体の `names`・`details` に渡して、登録(`LicensePageCreate`)・更新(`LicensePageEdit`)する。
/// 3. 保存のあと読み直して返す(同じ値の更新は履歴のトリガーが握りつぶし、応答の行が null になるため)。
/// 削除は論理削除(`LicensePageRemove`。`remove = true`)。更新者は、ログイン中の担当者を [AuditUserSource] で受けて送る。
/// コードの重複は、部分一意索引(`mstr_license_ix_code_active`)のエラーを、コードの項目の「重複」にする。
/// 記号(`symbol`)は DB が採番する。生成された型は、この中だけで使い、外へ出さない。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class LicenseRepository implements IEntityRepository {
  LicenseRepository(
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
    if (message.contains('mstr_license_ix_code_active')) {
      throw const EntityValidationException({
        'code': EntityFieldError.duplicate,
      });
    }
    throw e;
  }

  static String _text(Object? v) => v == null ? '' : '$v';

  static String _yesNo(bool? v) => v == null ? '' : (v ? 'はい' : 'いいえ');

  static bool? _bool(String v) => switch (v) {
    'はい' => true,
    'いいえ' => false,
    _ => null,
  };

  static const _flags = [
    'public_license',
    'customer_license',
    'organization_license',
  ];

  static String _dict(dynamic dictionary) =>
      LocalizedValues.fromDictionary(dictionary).resolve('ja');

  EntityRecord _record(Query$LicensePageRead$allMstrLicenses$nodes n) {
    final l = n.labels;
    final detail = n.detailTexts?.value.nodes;
    return EntityRecord(
      id: n.mstrLicenseId,
      values: {
        'code': _text(n.code),
        'name': _dict(l?.sharedDictionaryBySharedDictionaryNameId),
        'pronunciation': _dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'detail': detail == null || detail.isEmpty
            ? ''
            : _text(detail.first?.leadText),
        'public_license': _yesNo(n.publicLicense),
        'customer_license': _yesNo(n.customerLicense),
        'organization_license': _yesNo(n.organizationLicense),
        'remarks': _text(n.remarks),
      },
    );
  }

  Future<List<Query$LicensePageRead$allMstrLicenses$nodes>> _readNodes(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$LicensePageRead(
      Options$Query$LicensePageRead(
        variables: Variables$Query$LicensePageRead.fromJson({
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
          in result.parsedData?.allMstrLicenses?.nodes ??
              const <Query$LicensePageRead$allMstrLicenses$nodes?>[])
        ?n,
    ];
  }

  Future<Query$LicensePageRead$allMstrLicenses$nodes?> _readNode(
    String id,
  ) async {
    final rows = await _readNodes(1, 0, {
      'mstrLicenseId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{
      if (t('code').isEmpty) 'code': EntityFieldError.required,
      if (t('name').isEmpty) 'name': EntityFieldError.required,
      for (final k in _flags)
        if (t(k).isEmpty)
          k: EntityFieldError.required
        else if (_bool(t(k)) == null)
          k: EntityFieldError.invalidChoice,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final isNew = record.id.isEmpty;
    final node = isNew ? null : await _readNode(record.id);
    if (!isNew && node == null) throw StateError('資格が見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) =>
        isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await _updater();

    // 1. 呼称(名称・読み)
    var namesId = node?.labels?.sharedAppellationsId;
    final nameChanged = isNew || changed('name');
    final pronunciationChanged = changed('pronunciation');
    if (nameChanged || pronunciationChanged) {
      final result = await client.mutate$LicenseAppellationSavePageCall(
        Options$Mutation$LicenseAppellationSavePageCall(
          variables: Variables$Mutation$LicenseAppellationSavePageCall(
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
      if (namesId == null) throw StateError('資格の名称を保存できませんでした');
    }

    // 2. 文章(詳細)。変えたときだけ送る(読み込みは先頭の文だけのため)
    final existingDetailsId = node?.detailTexts?.sharedTextId;
    var detailsId = existingDetailsId;
    if (changed('detail')) {
      final result = await client.mutate$LicenseTextSavePageCall(
        Options$Mutation$LicenseTextSavePageCall(
          variables: Variables$Mutation$LicenseTextSavePageCall(
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
      if (detailsId == null) throw StateError('資格の詳細を保存できませんでした');
    }

    // 3. 本体(平らな列だけ)。更新は、渡した列だけが変わる(null は消す)
    final String id;
    if (isNew) {
      final result = await client.mutate$LicensePageCreate(
        Options$Mutation$LicensePageCreate(
          variables: Variables$Mutation$LicensePageCreate.fromJson({
            'code': t('code'),
            'names': namesId,
            'details': ?detailsId,
            'publicLicense': _bool(t('public_license')),
            'customerLicense': _bool(t('customer_license')),
            'organizationLicense': _bool(t('organization_license')),
            if (t('remarks').isNotEmpty) 'remarks': t('remarks'),
            if (au != null) 'updateUserId': au.staffId,
            if (au != null) 'updateUserHistoryId': au.staffHistoryId,
          }),
        ),
      );
      final e = result.exception;
      if (e != null) _throwMapped(e);
      final created = result.parsedData?.createMstrLicense?.mstrLicense;
      if (created == null) throw StateError('資格を登録できませんでした');
      id = created.mstrLicenseId;
    } else {
      id = record.id;
      String? nullable(String key) => t(key).isEmpty ? null : t(key);
      final patch = <String, dynamic>{
        if (changed('code')) 'code': t('code'),
        if (detailsId != existingDetailsId) 'details': detailsId,
        if (changed('public_license'))
          'publicLicense': _bool(t('public_license')),
        if (changed('customer_license'))
          'customerLicense': _bool(t('customer_license')),
        if (changed('organization_license'))
          'organizationLicense': _bool(t('organization_license')),
        if (changed('remarks')) 'remarks': nullable('remarks'),
      };
      if (patch.isNotEmpty) {
        final result = await client.mutate$LicensePageEdit(
          Options$Mutation$LicensePageEdit(
            variables: Variables$Mutation$LicensePageEdit.fromJson({
              'mstrLicenseId': id,
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
    final result = await client.mutate$LicensePageRemove(
      Options$Mutation$LicensePageRemove(
        variables: Variables$Mutation$LicensePageRemove(
          mstrLicenseId: id,
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
