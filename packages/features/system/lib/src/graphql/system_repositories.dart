import 'package:localized_values/localized_values.dart';
import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;
import 'package:system_model/system_model.dart';

import '../entities/system_definitions.dart';

/// システムの実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 対象は単位(`unit`)。名称・読み・略称は多言語の辞書(`shared_appellation`)、詳細は多言語の文章(`shared_text`)で、
/// 言語コード `ja` の値を読み書きする(他の言語の値は触らない)。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」):
/// 1. 呼称(名称・読み・略称)と文章(詳細)は、共通関数 `shared_appellation_save`・`shared_text_save` で作る・変える
///    (渡した言語の値だけ入れ替わる。更新は、読み込んだ値から変わった項目だけ送る。空に変えたときは空文字で消す)。
/// 2. 返った ID を、本体(`shared_unit`)の `names`・`details` に渡し、ミューテーション(登録 `UnitPageCreate`・更新 `UnitPageEdit`)で書く。
///    更新は、渡した列だけが変わる。呼称・文章を変えるだけなら、本体は書かない。
/// 3. 保存のあと読み直して返す(同じ値の更新は履歴のトリガーが握りつぶし、応答の行が null になるため、応答は使わない)。
/// 削除は論理削除(`UnitPageRemove`。`remove = true`)。更新者は、ログイン中の担当者を [AuditUserSource] で受けて送る
/// (渡されていない・ログインしていないときは送らない)。
/// 共通関数と本体は別のトランザクション。本体の登録が失敗すると、呼称・文章が、どの本体からも参照されない行として残る
/// (マスタは同時に変更される可能性が低く、影響が限定的なため許容する)。
/// 詳細は、読み込みが先頭の文(`lead_text`)だけを返すため、変えたときだけ送る(変えないと全文が先頭の文で上書きされる)。
/// 記号(`symbol`)は DB が採番するため読み取り専用。生成された型は、この中だけで使い、外へ出さない。
/// 抽出条件・並び順は無視する(絞り込みと並べ替えはテーブル側。サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> systemRepositories(
  GraphQLClient client, {
  AuditUserSource? auditUser,
}) {
  final language = _LanguageCode(client);
  return [
    _UnitRepository(_unitDefinition, client, language, auditUser),
    _CurrencyRepository(_definition('currency'), client, language, auditUser),
    _ExchangeRateRepository(_definition('exchangerate'), client, auditUser),
  ];
}

/// 生成された定義(DB に合わせた項目)を、そのまま使う。
EntityDefinition _definition(String key) =>
    systemDefinitions.firstWhere((d) => d.key == key);

/// 生成された定義(DB に合わせた項目)を使う。記号(`symbol`)は DB が採番するため読み取り専用。
final EntityDefinition _unitDefinition = () {
  final d = systemDefinitions.firstWhere((d) => d.key == 'unit');
  return EntityDefinition(
    key: d.key,
    owner: d.owner,
    uniqueKeys: d.uniqueKeys,
    fields: [
      for (final f in d.fields)
        if (f.key == 'symbol')
          FieldDefinition(
            key: f.key,
            kind: f.kind,
            required: false,
            readOnly: true,
          )
        else
          f,
    ],
  );
}();

/// DB のエラー(共通関数の RAISE の文。PostGraphile は errcode を返さない)を、画面の検証エラーにする。それ以外はそのまま投げる。
Never _throwMapped(OperationException e) {
  final message = e.graphqlErrors.map((x) => x.message).join(' ');
  // APL02: 名称には、いずれかの言語に値が必要
  if (message.contains('名称には、いずれかの言語に値が必要')) {
    throw const EntityValidationException({'name': EntityFieldError.required});
  }
  throw e;
}

/// 検証用 DB の言語コード `ja` の ID(読み込みの必須の条件)。最初の1回だけ引く。
class _LanguageCode {
  _LanguageCode(this._client);

  final GraphQLClient _client;
  Future<String>? _id;

  Future<String> get id => _id ??= _load();

  Future<String> _load() async {
    final result = await _client.query(
      QueryOptions(
        document: gql(
          'query { allSharedLanguageCodes(first: 20, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }',
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes =
        (result.data?['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ??
        const [];
    for (final n in nodes.whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == 'ja') {
        return n['sharedLanguageCodeId'] as String;
      }
    }
    throw StateError('言語コード ja が見つかりません');
  }
}

class _UnitRepository implements IEntityRepository {
  _UnitRepository(this.definition, this.client, this.language, this.auditUser);

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final _LanguageCode language;

  /// 更新者(ログイン中の担当者)を返す関数。無いとき・ログインしていないときは、更新者を送らない。
  final AuditUserSource? auditUser;

  /// 書き込みのたびに、更新者を引く(ログインしていなければ null)。
  Future<AuditUser?> _updater() async =>
      auditUser == null ? null : auditUser!();

  /// 登録・更新。呼称・文章は共通関数、本体はミューテーション(上の説明)。
  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    if (t('name').isEmpty) {
      throw const EntityValidationException({
        'name': EntityFieldError.required,
      });
    }
    final isNew = record.id.isEmpty;
    final node = isNew ? null : await _readNode(record.id);
    if (!isNew && node == null) throw StateError('単位が見つかりません');
    final before = node == null ? null : _record(node);
    // 送る項目: 新規は入力のあった項目、更新は読み込んだ値から変わった項目(空に変えたときは空文字・null で消す)
    bool changed(String key) =>
        isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await _updater();

    // 1. 呼称(名称・読み・略称)。渡した言語の値だけ入れ替わる
    var namesId = node?.labels?.sharedAppellationsId;
    final nameChanged = isNew || changed('name');
    final pronunciationChanged = changed('pronunciation');
    final nicknameChanged = changed('nickname');
    if (nameChanged || pronunciationChanged || nicknameChanged) {
      final result = await client.mutate$UnitAppellationSavePageCall(
        Options$Mutation$UnitAppellationSavePageCall(
          variables: Variables$Mutation$UnitAppellationSavePageCall(
            pAppellationId: namesId,
            pName: nameChanged ? {'ja': t('name')} : null,
            pPronunciation: pronunciationChanged
                ? {'ja': t('pronunciation')}
                : null,
            pNickname: nicknameChanged ? {'ja': t('nickname')} : null,
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
      if (namesId == null) throw StateError('単位の名称を保存できませんでした');
    }

    // 2. 文章(詳細)。詳細が無い単位は、入力があるときだけ作る
    final existingDetailsId = node?.detailTexts?.sharedTextId;
    var detailsId = existingDetailsId;
    if (changed('detail')) {
      final result = await client.mutate$UnitTextSavePageCall(
        Options$Mutation$UnitTextSavePageCall(
          variables: Variables$Mutation$UnitTextSavePageCall(
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
      if (detailsId == null) throw StateError('単位の詳細を保存できませんでした');
    }

    // 3. 本体(平らな列だけ)。更新は、渡した列だけが変わる(null は消す)
    final String id;
    if (isNew) {
      final result = await client.mutate$UnitPageCreate(
        Options$Mutation$UnitPageCreate(
          variables: Variables$Mutation$UnitPageCreate.fromJson({
            'names': namesId,
            'details': ?detailsId,
            if (t('remarks').isNotEmpty) 'remarks': t('remarks'),
            if (au != null) 'updateUserId': au.staffId,
            if (au != null) 'updateUserHistoryId': au.staffHistoryId,
          }),
        ),
      );
      final e = result.exception;
      if (e != null) _throwMapped(e);
      final created = result.parsedData?.createSharedUnit?.sharedUnit;
      if (created == null) throw StateError('単位を登録できませんでした');
      id = created.sharedUnitId;
    } else {
      id = record.id;
      final patch = <String, dynamic>{
        if (detailsId != existingDetailsId) 'details': detailsId,
        if (changed('remarks'))
          'remarks': t('remarks').isEmpty ? null : t('remarks'),
      };
      if (patch.isNotEmpty) {
        final result = await client.mutate$UnitPageEdit(
          Options$Mutation$UnitPageEdit(
            variables: Variables$Mutation$UnitPageEdit.fromJson({
              'sharedUnitId': id,
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
    final result = await client.mutate$UnitPageRemove(
      Options$Mutation$UnitPageRemove(
        variables: Variables$Mutation$UnitPageRemove(
          sharedUnitId: id,
          remove: true,
          updateUserId: au?.staffId,
          updateUserHistoryId: au?.staffHistoryId,
        ),
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
  }

  static String _text(Object? v) => v == null ? '' : '$v';

  /// 辞書(`value.nodes[0].dictionaryValue`)の言語コード指定の値。
  static String _dict(dynamic dictionary) {
    // 言語を絞った問い合わせは、絞った言語(ja)の値になる。言語ごとの値を取る問い合わせになれば、代替も効く
    return LocalizedValues.fromDictionary(dictionary).resolve('ja');
  }

  EntityRecord _record(Query$UnitPageRead$allSharedUnits$nodes n) {
    final labels = n.labels;
    final detail = n.detailTexts?.value.nodes;
    return EntityRecord(
      id: n.sharedUnitId,
      values: {
        'name': _dict(labels?.sharedDictionaryBySharedDictionaryNameId),
        'pronunciation': _dict(
          labels?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _dict(labels?.sharedDictionaryBySharedDictionaryNicknameId),
        'detail': detail == null || detail.isEmpty
            ? ''
            : _text(detail.first?.leadText),
        'symbol': _text(n.symbol),
        'remarks': _text(n.remarks),
      },
    );
  }

  Future<List<Query$UnitPageRead$allSharedUnits$nodes>> _readNodes(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$UnitPageRead(
      Options$Query$UnitPageRead(
        variables: Variables$Query$UnitPageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await language.id,
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allSharedUnits?.nodes ??
              const <Query$UnitPageRead$allSharedUnits$nodes?>[])
        ?n,
    ];
  }

  /// 1件(呼称・文章の ID を含む生成された型のまま)。更新のとき、既存の呼称・文章の ID を引くのに使う。
  Future<Query$UnitPageRead$allSharedUnits$nodes?> _readNode(String id) async {
    final rows = await _readNodes(1, 0, {
      'sharedUnitId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
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

/// 通貨(`mstr_currency`)。名称・読み・略称は呼称の共通関数、本体はミューテーション(単位と同じ形)。
/// 通貨コード(ISO 4217)は有効な行で一意(DB の部分一意索引。重複は画面の検証エラーにする)。
class _CurrencyRepository implements IEntityRepository {
  _CurrencyRepository(
    this.definition,
    this.client,
    this.language,
    this.auditUser,
  );

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final _LanguageCode language;
  final AuditUserSource? auditUser;

  Future<AuditUser?> _updater() async =>
      auditUser == null ? null : auditUser!();

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{
      if (t('code').isEmpty) 'code': EntityFieldError.required,
      if (t('name').isEmpty) 'name': EntityFieldError.required,
      if (t('currency_symbol').isEmpty)
        'currency_symbol': EntityFieldError.required,
    };
    final minorUnit = t('minor_unit').isEmpty
        ? 0
        : int.tryParse(t('minor_unit'));
    if (minorUnit == null || minorUnit < 0 || minorUnit > 4) {
      errors['minor_unit'] = EntityFieldError.invalidNumber;
    }
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final isNew = record.id.isEmpty;
    final node = isNew ? null : await _readNode(record.id);
    if (!isNew && node == null) throw StateError('通貨が見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) =>
        isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await _updater();

    // 1. 呼称(名称・読み・略称)
    var namesId = node?.labels?.sharedAppellationsId;
    final nameChanged = isNew || changed('name');
    final pronunciationChanged = changed('pronunciation');
    final nicknameChanged = changed('nickname');
    if (nameChanged || pronunciationChanged || nicknameChanged) {
      final result = await client.mutate$CurrencyAppellationSavePageCall(
        Options$Mutation$CurrencyAppellationSavePageCall(
          variables: Variables$Mutation$CurrencyAppellationSavePageCall(
            pAppellationId: namesId,
            pName: nameChanged ? {'ja': t('name')} : null,
            pPronunciation: pronunciationChanged
                ? {'ja': t('pronunciation')}
                : null,
            pNickname: nicknameChanged ? {'ja': t('nickname')} : null,
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
      if (namesId == null) throw StateError('通貨の名称を保存できませんでした');
    }

    // 2. 本体(平らな列だけ)
    bool? autoRate() => !changed('rate_auto')
        ? null
        : switch (t('rate_auto')) {
            'はい' => true,
            'いいえ' => false,
            _ => null,
          };
    final String id;
    try {
      if (isNew) {
        final result = await client.mutate$CurrencyPageCreate(
          Options$Mutation$CurrencyPageCreate(
            variables: Variables$Mutation$CurrencyPageCreate.fromJson({
              'code': t('code').toUpperCase(),
              'names': namesId,
              'currencySymbol': t('currency_symbol'),
              'minorUnit': minorUnit,
              'rateAuto': autoRate() ?? false,
              if (t('remarks').isNotEmpty) 'remarks': t('remarks'),
              if (au != null) 'updateUserId': au.staffId,
              if (au != null) 'updateUserHistoryId': au.staffHistoryId,
            }),
          ),
        );
        final e = result.exception;
        if (e != null) _throwMappedCurrency(e);
        final created = result.parsedData?.createMstrCurrency?.mstrCurrency;
        if (created == null) throw StateError('通貨を登録できませんでした');
        id = created.mstrCurrencyId;
      } else {
        id = record.id;
        final patch = <String, dynamic>{
          if (changed('code')) 'code': t('code').toUpperCase(),
          if (nameChanged || pronunciationChanged || nicknameChanged)
            'names': namesId,
          if (changed('currency_symbol'))
            'currencySymbol': t('currency_symbol'),
          if (changed('minor_unit')) 'minorUnit': minorUnit,
          'rateAuto': ?autoRate(),
          if (changed('remarks'))
            'remarks': t('remarks').isEmpty ? null : t('remarks'),
        };
        // 名称は同じ呼称の ID のまま(値だけ入れ替わる)なので、ID が変わっていなければ送らない
        if (namesId == node?.labels?.sharedAppellationsId) {
          patch.remove('names');
        }
        if (patch.isNotEmpty) {
          final result = await client.mutate$CurrencyPageEdit(
            Options$Mutation$CurrencyPageEdit(
              variables: Variables$Mutation$CurrencyPageEdit.fromJson({
                'mstrCurrencyId': id,
                ...patch,
                if (au != null) 'updateUserId': au.staffId,
                if (au != null) 'updateUserHistoryId': au.staffHistoryId,
              }),
            ),
          );
          final e = result.exception;
          if (e != null) _throwMappedCurrency(e);
        }
      }
    } on OperationException catch (e) {
      _throwMappedCurrency(e);
    }
    return (await findById(id)) ?? record;
  }

  @override
  Future<void> remove(String id) async {
    final au = await _updater();
    final result = await client.mutate$CurrencyPageRemove(
      Options$Mutation$CurrencyPageRemove(
        variables: Variables$Mutation$CurrencyPageRemove(
          mstrCurrencyId: id,
          remove: true,
          updateUserId: au?.staffId,
          updateUserHistoryId: au?.staffHistoryId,
        ),
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
  }

  static String _text(Object? v) => v == null ? '' : '$v';
  static String _dict(dynamic dictionary) =>
      LocalizedValues.fromDictionary(dictionary).resolve('ja');

  EntityRecord _record(Query$CurrencyPageRead$allMstrCurrencies$nodes n) {
    final labels = n.labels;
    final latest = n.latest;
    return EntityRecord(
      id: n.mstrCurrencyId,
      values: {
        'code': _text(n.code),
        'name': _dict(labels?.sharedDictionaryBySharedDictionaryNameId),
        'pronunciation': _dict(
          labels?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _dict(labels?.sharedDictionaryBySharedDictionaryNicknameId),
        'currency_symbol': _text(n.currencySymbol),
        'minor_unit': _text(n.minorUnit),
        'rate_auto': n.rateAuto == true ? 'はい' : 'いいえ',
        // 最新のレート(DB のビュー v_currency_rate_latest)。基準通貨は 1 で適用開始日なし。レートの登録は為替レートの画面
        'is_base': latest?.isBase == true ? '1' : '',
        'latest_rate': _text(latest?.rate),
        'latest_rate_date': _text(latest?.rateDate),
        'remarks': _text(n.remarks),
      },
    );
  }

  Future<List<Query$CurrencyPageRead$allMstrCurrencies$nodes>> _readNodes(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$CurrencyPageRead(
      Options$Query$CurrencyPageRead(
        variables: Variables$Query$CurrencyPageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await language.id,
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allMstrCurrencies?.nodes ??
              const <Query$CurrencyPageRead$allMstrCurrencies$nodes?>[])
        ?n,
    ];
  }

  Future<Query$CurrencyPageRead$allMstrCurrencies$nodes?> _readNode(
    String id,
  ) async {
    final rows = await _readNodes(1, 0, {
      'mstrCurrencyId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
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

/// 通貨コードの重複(部分一意索引 `mstr_currency_ix_code_active`)は、コードの重複の検証エラーにする。
Never _throwMappedCurrency(OperationException e) {
  final message = e.graphqlErrors.map((x) => x.message).join(' ');
  if (message.contains('mstr_currency_ix_code_active')) {
    throw const EntityValidationException({'code': EntityFieldError.duplicate});
  }
  _throwMapped(e);
}

/// 為替レート(`trans_exchange_rate`)。月ごとの概算で、追記のみ(CLAUDE.md の R3)。
/// 登録は 1 行の追加。直すときは、同じ通貨・月の新しい行を足す(あとから登録した有効な行が使われる)ので、
/// 更新は「新しい行を足し、前の行を取り消す(remove = true)」。削除は取り消し(remove = true)。
/// 適用する月は、月の初日に正規化して送る(DB の CHECK)。
class _ExchangeRateRepository implements IEntityRepository {
  _ExchangeRateRepository(this.definition, this.client, this.auditUser);

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final AuditUserSource? auditUser;

  Future<AuditUser?> _updater() async =>
      auditUser == null ? null : auditUser!();

  /// `yyyy-MM-dd`(区切りは `/` も可)の日付。実在しない日付・読めないときは null。
  static String? _dateOf(String text) {
    final m = RegExp(
      r'^(\d{4})[-/](\d{1,2})[-/](\d{1,2})$',
    ).firstMatch(text.trim());
    if (m == null) return null;
    final y = int.parse(m.group(1)!);
    final mo = int.parse(m.group(2)!);
    final d = int.parse(m.group(3)!);
    final parsed = DateTime.utc(y, mo, d);
    if (parsed.year != y || parsed.month != mo || parsed.day != d) return null;
    return '$y-${mo.toString().padLeft(2, '0')}-${d.toString().padLeft(2, '0')}';
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{};
    if (t('mstr_currency_id').isEmpty) {
      errors['mstr_currency_id'] = EntityFieldError.required;
    }
    final rateDate = _dateOf(t('rate_date'));
    if (t('rate_date').isEmpty) {
      errors['rate_date'] = EntityFieldError.required;
    } else if (rateDate == null) {
      errors['rate_date'] = EntityFieldError.invalidDate;
    }
    final rate = double.tryParse(t('rate'));
    if (t('rate').isEmpty) {
      errors['rate'] = EntityFieldError.required;
    } else if (rate == null || rate <= 0) {
      errors['rate'] = EntityFieldError.invalidNumber;
    }
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final au = await _updater();
    final result = await client.mutate$CurrencyRatePageCreate(
      Options$Mutation$CurrencyRatePageCreate(
        variables: Variables$Mutation$CurrencyRatePageCreate.fromJson({
          'mstrCurrencyId': t('mstr_currency_id'),
          'rateDate': rateDate,
          'rate': t('rate'),
          'autoFetched': t('auto_fetched') == 'はい',
          if (t('source').isNotEmpty) 'source': t('source'),
          if (t('remarks').isNotEmpty) 'remarks': t('remarks'),
          if (au != null) 'updateUserId': au.staffId,
          if (au != null) 'updateUserHistoryId': au.staffHistoryId,
        }),
      ),
    );
    final e = result.exception;
    if (e != null) throw _rateLockedOr(e);
    final created =
        result.parsedData?.createTransExchangeRate?.transExchangeRate;
    if (created == null) throw StateError('為替レートを登録できませんでした');
    // 直した場合は、前の行を取り消す(追記のみ。あとの行が有効)
    if (record.id.isNotEmpty) await remove(record.id);
    return (await findById(created.transExchangeRateId)) ?? record;
  }

  @override
  Future<void> remove(String id) async {
    final au = await _updater();
    final result = await client.mutate$CurrencyRatePageRemove(
      Options$Mutation$CurrencyRatePageRemove(
        variables: Variables$Mutation$CurrencyRatePageRemove(
          transExchangeRateId: id,
          remove: true,
          updateUserId: au?.staffId,
          updateUserHistoryId: au?.staffHistoryId,
        ),
      ),
    );
    final e = result.exception;
    if (e != null) throw _rateLockedOr(e);
  }

  static String _text(Object? v) => v == null ? '' : '$v';

  /// 確定済みの期間のレート(DB が `CUR02` で止める。GraphQL には errcode が含まれないため、文で見分ける)は、検証エラーにする。
  static Object _rateLockedOr(Object e) {
    if (e is OperationException &&
        e.graphqlErrors.any((x) => x.message.contains('確定済みの期間'))) {
      return const EntityValidationException({
        'rate_date': EntityFieldError.periodLocked,
      });
    }
    return e;
  }

  EntityRecord _record(
    Query$CurrencyRatePageRead$allTransExchangeRates$nodes n,
  ) => EntityRecord(
    id: n.transExchangeRateId,
    values: {
      'mstr_currency_id': _text(n.mstrCurrencyId),
      'rate_date': _text(n.rateDate),
      'rate': _text(n.rate),
      'auto_fetched': n.autoFetched == true ? 'はい' : 'いいえ',
      'source': _text(n.source),
      'remarks': _text(n.remarks),
    },
  );

  Future<List<Query$CurrencyRatePageRead$allTransExchangeRates$nodes>>
  _readNodes(int first, int offset, Map<String, dynamic> filter) async {
    final result = await client.query$CurrencyRatePageRead(
      Options$Query$CurrencyRatePageRead(
        variables: Variables$Query$CurrencyRatePageRead.fromJson({
          'first': first,
          'offset': offset,
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw _rateLockedOr(e);
    return [
      for (final n
          in result.parsedData?.allTransExchangeRates?.nodes ??
              const <Query$CurrencyRatePageRead$allTransExchangeRates$nodes?>[])
        ?n,
    ];
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
    final rows = await _readNodes(1, 0, {
      'transExchangeRateId': {'equalTo': id},
    });
    return rows.isEmpty ? null : _record(rows.first);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
