import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:localized_values/localized_values.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;

/// 事業所(`site`。DB の `info_office` と、1 対 1 の住所 `info_address`)の取得元(GraphQL 版。書き込みできる)。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」。入れ子のミューテーション):
/// 1. 名称・読み・略称(事業所)と、住所1・住所2・建物(住所)は、共通関数 `shared_appellation_save` で作る・変える
///    (渡した言語 `ja` の値だけ入れ替わる。更新は、変わった項目だけ送る)。
/// 2. 住所は、先に登録・更新する(`OfficeAddressPageCreate`・`OfficeAddressPageEdit`)。返った ID を事業所に渡す。
/// 3. 事業所を登録(`OfficePageCreate`)・更新(`OfficePageEdit`。変えた項目だけ)する。会社は、1 社だけの前提で最初の会社。
/// 4. 保存のあと読み直して返す。削除は論理削除(`OfficePageRemove`。住所は残す)。
/// 複数のミューテーションは別のトランザクションのため、事業所の登録が失敗すると、住所(と呼称)が参照されない行として残る(許容する)。
/// コードの重複は、部分一意索引(`info_office_ix_code_active`)のエラーを、コードの項目の「重複」にする。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class SiteRepository implements IEntityRepository {
  SiteRepository(this.definition, this.client, this._language, this.auditUser);

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final Future<String> Function() _language;
  final AuditUserSource? auditUser;

  Future<AuditUser?> _updater() async =>
      auditUser == null ? null : auditUser!();

  Never _throwMapped(OperationException e) {
    final message = e.graphqlErrors.map((x) => x.message).join(' ');
    if (message.contains('名称には、いずれかの言語に値が必要')) {
      throw const EntityValidationException({
        'name': EntityFieldError.required,
      });
    }
    if (message.contains('info_office_ix_code_active')) {
      throw const EntityValidationException({
        'code': EntityFieldError.duplicate,
      });
    }
    throw e;
  }

  static String _text(Object? v) => v == null ? '' : '$v';

  static String _dict(dynamic dictionary) =>
      LocalizedValues.fromDictionary(dictionary).resolve('ja');

  EntityRecord _record(Query$OfficePageRead$allInfoOffices$nodes n) {
    final l = n.labels;
    final a = n.address;
    return EntityRecord(
      id: n.infoOfficeId,
      values: {
        'code': _text(n.code),
        'name': _dict(l?.sharedDictionaryBySharedDictionaryNameId),
        'pronunciation': _dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _dict(l?.sharedDictionaryBySharedDictionaryNicknameId),
        'country_code_2': _text(a?.countryCode2),
        'zip_code': _text(a?.zipCode),
        'address1': _dict(
          a?.address1?.sharedDictionaryBySharedDictionaryNameId,
        ),
        'address2': _dict(
          a?.address2?.sharedDictionaryBySharedDictionaryNameId,
        ),
        'building': _dict(
          a?.building?.sharedDictionaryBySharedDictionaryNameId,
        ),
        'phone': _text(a?.phone),
        'fax_number': _text(a?.faxNumber),
      },
    );
  }

  Future<List<Query$OfficePageRead$allInfoOffices$nodes>> _readNodes(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$OfficePageRead(
      Options$Query$OfficePageRead(
        variables: Variables$Query$OfficePageRead.fromJson({
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
          in result.parsedData?.allInfoOffices?.nodes ??
              const <Query$OfficePageRead$allInfoOffices$nodes?>[])
        ?n,
    ];
  }

  Future<Query$OfficePageRead$allInfoOffices$nodes?> _readNode(
    String id,
  ) async {
    final rows = await _readNodes(1, 0, {
      'infoOfficeId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  /// 会社(1 社だけの前提)の ID。
  Future<String> _companyId() async {
    final result = await client.query$CompanyPageRead(
      Options$Query$CompanyPageRead(
        variables: Variables$Query$CompanyPageRead.fromJson({
          'first': 1,
          'offset': 0,
          'languageCodeId': await _language(),
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes = result.parsedData?.allInfoCompanies?.nodes;
    if (nodes == null || nodes.isEmpty || nodes.first == null) {
      throw StateError('会社が登録されていません');
    }
    return nodes.first!.infoCompanyId;
  }

  /// 呼称を作る・変える。返った呼称の ID(変えないときは [existingId])。
  Future<String?> _saveAppellation(
    String? existingId, {
    dynamic name,
    dynamic pronunciation,
    dynamic nickname,
    AuditUser? au,
  }) async {
    if (name == null && pronunciation == null && nickname == null) {
      return existingId;
    }
    final result = await client.mutate$OfficeAppellationSavePageCall(
      Options$Mutation$OfficeAppellationSavePageCall(
        variables: Variables$Mutation$OfficeAppellationSavePageCall(
          pAppellationId: existingId,
          pName: name,
          pPronunciation: pronunciation,
          pNickname: nickname,
          pStaffId: au?.staffId,
          pStaffHistoryId: au?.staffHistoryId,
        ),
      ),
    );
    final e = result.exception;
    if (e != null) _throwMapped(e);
    final id = result
        .parsedData
        ?.sharedAppellationSave
        ?.sharedAppellation
        ?.sharedAppellationsId;
    if (id == null) throw StateError('呼称を保存できませんでした');
    return id;
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{
      if (t('code').isEmpty) 'code': EntityFieldError.required,
      if (t('name').isEmpty) 'name': EntityFieldError.required,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final isNew = record.id.isEmpty;
    final node = isNew ? null : await _readNode(record.id);
    if (!isNew && node == null) throw StateError('事業所が見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) =>
        isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    String? nullable(String key) => t(key).isEmpty ? null : t(key);
    final au = await _updater();

    // 1. 事業所の呼称(名称・読み・略称)
    final nameChanged = isNew || changed('name');
    final pronunciationChanged = changed('pronunciation');
    final nicknameChanged = changed('nickname');
    final namesId = await _saveAppellation(
      node?.labels?.sharedAppellationsId,
      name: nameChanged ? {'ja': t('name')} : null,
      pronunciation: pronunciationChanged ? {'ja': t('pronunciation')} : null,
      nickname: nicknameChanged ? {'ja': t('nickname')} : null,
      au: au,
    );

    // 2. 住所(1 対 1)。入力が無く、まだ住所も無ければ作らない
    const addressKeys = [
      'country_code_2',
      'zip_code',
      'address1',
      'address2',
      'building',
      'phone',
      'fax_number',
    ];
    final existingAddress = node?.address;
    var addressId = node?.infoAddressId;
    if (addressKeys.any(changed)) {
      // 住所1・住所2・建物は、空にしたときは呼称を作らず、列を空(null)にする(呼称は、いずれかの言語に値が必要なため)
      Future<String?> part(String key, String? existing) async => t(key).isEmpty
          ? null
          : await _saveAppellation(
              existing,
              name: changed(key) ? {'ja': t(key)} : null,
              au: au,
            );
      final a1 = await part(
        'address1',
        existingAddress?.address1?.sharedAppellationsId,
      );
      final a2 = await part(
        'address2',
        existingAddress?.address2?.sharedAppellationsId,
      );
      final b = await part(
        'building',
        existingAddress?.building?.sharedAppellationsId,
      );
      if (existingAddress == null || addressId == null) {
        final result = await client.mutate$OfficeAddressPageCreate(
          Options$Mutation$OfficeAddressPageCreate(
            variables: Variables$Mutation$OfficeAddressPageCreate.fromJson({
              'countryCode2': ?nullable('country_code_2'),
              'zipCode': ?nullable('zip_code'),
              'address1': ?a1,
              'address2': ?a2,
              'building': ?b,
              'phone': ?nullable('phone'),
              'faxNumber': ?nullable('fax_number'),
              if (au != null) 'updateUserId': au.staffId,
              if (au != null) 'updateUserHistoryId': au.staffHistoryId,
            }),
          ),
        );
        final e = result.exception;
        if (e != null) _throwMapped(e);
        addressId =
            result.parsedData?.createInfoAddress?.infoAddress?.infoAddressId;
        if (addressId == null) throw StateError('住所を登録できませんでした');
      } else {
        final patch = <String, dynamic>{
          if (changed('country_code_2'))
            'countryCode2': nullable('country_code_2'),
          if (changed('zip_code')) 'zipCode': nullable('zip_code'),
          if (a1 != existingAddress.address1?.sharedAppellationsId)
            'address1': a1,
          if (a2 != existingAddress.address2?.sharedAppellationsId)
            'address2': a2,
          if (b != existingAddress.building?.sharedAppellationsId)
            'building': b,
          if (changed('phone')) 'phone': nullable('phone'),
          if (changed('fax_number')) 'faxNumber': nullable('fax_number'),
        };
        if (patch.isNotEmpty) {
          final result = await client.mutate$OfficeAddressPageEdit(
            Options$Mutation$OfficeAddressPageEdit(
              variables: Variables$Mutation$OfficeAddressPageEdit.fromJson({
                'infoAddressId': addressId,
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
    }

    // 3. 事業所の本体(平らな列だけ)
    final String id;
    if (isNew) {
      final result = await client.mutate$OfficePageCreate(
        Options$Mutation$OfficePageCreate(
          variables: Variables$Mutation$OfficePageCreate.fromJson({
            'infoCompanyId': await _companyId(),
            'code': t('code'),
            'names': namesId,
            'infoAddressId': ?addressId,
            if (au != null) 'updateUserId': au.staffId,
            if (au != null) 'updateUserHistoryId': au.staffHistoryId,
          }),
        ),
      );
      final e = result.exception;
      if (e != null) _throwMapped(e);
      final created = result.parsedData?.createInfoOffice?.infoOffice;
      if (created == null) throw StateError('事業所を登録できませんでした');
      id = created.infoOfficeId;
    } else {
      id = record.id;
      final patch = <String, dynamic>{
        if (changed('code')) 'code': t('code'),
        if (addressId != node?.infoAddressId) 'infoAddressId': addressId,
      };
      if (patch.isNotEmpty) {
        final result = await client.mutate$OfficePageEdit(
          Options$Mutation$OfficePageEdit(
            variables: Variables$Mutation$OfficePageEdit.fromJson({
              'infoOfficeId': id,
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

  /// 論理削除(`remove = true`)。住所は残す。使用中かの判定は呼び出し側([EntityCatalog])が行う。
  @override
  Future<void> remove(String id) async {
    final au = await _updater();
    final result = await client.mutate$OfficePageRemove(
      Options$Mutation$OfficePageRemove(
        variables: Variables$Mutation$OfficePageRemove(
          infoOfficeId: id,
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
