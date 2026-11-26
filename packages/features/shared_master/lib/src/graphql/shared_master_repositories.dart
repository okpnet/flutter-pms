import 'package:localized_values/localized_values.dart';
import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;
import 'package:shared_master_model/shared_master_model.dart';

import '../entities/shared_master_definitions.dart';

/// 共有マスタの実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 対象は利害関係者(`stakeholder`。顧客・外部供給者・運送業者をフラグで見分ける)。名称・読み・略称は多言語の辞書
/// (`shared_appellation`)で、言語コード `ja` の値を読み書きする(他の言語の値は触らない)。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」):
/// 1. 呼称(名称・読み・略称)は、共通関数 `shared_appellation_save` で作る・変える(渡した言語の値だけ入れ替わる。
///    更新は、読み込んだ値から変わった項目だけ送る。空に変えたときは空文字で消す)。
/// 2. 返った ID を、本体(`mstr_stakeholder`)の `names` に渡し、ミューテーション(登録 `StakeholderPageCreate`・
///    更新 `StakeholderPageEdit`)で書く。更新は、渡した列だけが変わる(空に変えた列は null で消す)。呼称だけを変えるなら、本体は書かない。
/// 3. 保存のあと読み直して返す(同じ値の更新は履歴のトリガーが握りつぶし、応答の行が null になるため、応答は使わない)。
/// コードの重複は、DB の部分一意索引(`mstr_stakeholder_ix_code_active`)が `23505` で止める。索引の名前で、画面の検証エラー(重複)にする。
/// 削除は論理削除(`StakeholderPageRemove`。`remove = true`)。更新者は、ログイン中の担当者を [AuditUserSource] で受けて送る
/// (渡されていない・ログインしていないときは送らない)。
/// 共通関数と本体は別のトランザクション。本体の登録が失敗すると、呼称が、どの本体からも参照されない行として残る(マスタは許容する)。
/// 役割の選択(はい/いいえ)が空のときは変えない。配送区分(`mstr_shipping_kind_id`)は、配送区分の取得元が GraphQL 版になるまで
/// (サンプルの ID は DB に無い)読み取り専用。住所は扱わない。
/// 担当者(`contact`)・配送区分(`shipkind`)は、サンプルのまま。生成された型は、この中だけで使い、外へ出さない。
/// 抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> sharedMasterRepositories(
  GraphQLClient client, {
  AuditUserSource? auditUser,
}) {
  final language = _LanguageCode(client);
  return [
    _StakeholderRepository(_stakeholderDefinition, client, language, auditUser),
  ];
}

/// 生成された定義(DB に合わせた項目)を使う。配送区分は、読み取り専用にする(上の説明)。
final EntityDefinition _stakeholderDefinition = () {
  final d = sharedMasterDefinitions.firstWhere((d) => d.key == 'stakeholder');
  return EntityDefinition(
    key: d.key,
    owner: d.owner,
    uniqueKeys: d.uniqueKeys,
    reverseLists: d.reverseLists,
    fields: [
      for (final f in d.fields)
        if (f.key == 'mstr_shipping_kind_id')
          FieldDefinition(
            key: f.key,
            kind: f.kind,
            required: false,
            readOnly: true,
            reference: f.reference,
          )
        else
          f,
    ],
  );
}();

/// DB のエラーを、画面の検証エラーにする。それ以外はそのまま投げる。
/// 共通関数の RAISE の文(PostGraphile は errcode を返さない)と、コードの部分一意索引(`23505`。メッセージに索引の名前が入る)で見分ける。
Never _throwMapped(OperationException e) {
  final message = e.graphqlErrors.map((x) => x.message).join(' ');
  // APL02: 名称には、いずれかの言語に値が必要
  if (message.contains('名称には、いずれかの言語に値が必要')) {
    throw const EntityValidationException({'name': EntityFieldError.required});
  }
  if (message.contains('_ix_code_active')) {
    throw const EntityValidationException({'code': EntityFieldError.duplicate});
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

class _StakeholderRepository implements IEntityRepository {
  _StakeholderRepository(
    this.definition,
    this.client,
    this.language,
    this.auditUser,
  );

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final _LanguageCode language;

  /// 更新者(ログイン中の担当者)を返す関数。無いとき・ログインしていないときは、更新者を送らない。
  final AuditUserSource? auditUser;

  /// 書き込みのたびに、更新者を引く(ログインしていなければ null)。
  Future<AuditUser?> _updater() async =>
      auditUser == null ? null : auditUser!();

  /// 登録・更新。呼称は共通関数、本体はミューテーション(上の説明)。
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
    if (!isNew && node == null) throw StateError('利害関係者が見つかりません');
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
      final result = await client.mutate$StakeholderAppellationSavePageCall(
        Options$Mutation$StakeholderAppellationSavePageCall(
          variables: Variables$Mutation$StakeholderAppellationSavePageCall(
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
      if (namesId == null) throw StateError('利害関係者の名称を保存できませんでした');
    }

    // 2. 本体(平らな列だけ)。役割の選択(はい/いいえ)は、変わった値だけ。空は変えない
    bool? flag(String key) => !changed(key)
        ? null
        : switch (t(key)) {
            'はい' => true,
            'いいえ' => false,
            _ => null,
          };
    // 検収日(月の日。1〜31。空は NULL = 月末)
    final dayText = t('acceptance_day');
    final acceptanceDay = dayText.isEmpty ? null : int.tryParse(dayText);
    if (dayText.isNotEmpty &&
        (acceptanceDay == null || acceptanceDay < 1 || acceptanceDay > 31)) {
      throw const EntityValidationException({
        'acceptance_day': EntityFieldError.invalidNumber,
      });
    }
    if (t('mstr_currency_id').isEmpty) {
      throw const EntityValidationException({
        'mstr_currency_id': EntityFieldError.required,
      });
    }
    final isCustomer = flag('is_customer');
    final isSupplier = flag('is_supplier');
    final isLogistics = flag('is_logistics');
    final String id;
    if (isNew) {
      final result = await client.mutate$StakeholderPageCreate(
        Options$Mutation$StakeholderPageCreate(
          variables: Variables$Mutation$StakeholderPageCreate.fromJson({
            'code': t('code'),
            if (t('control_code').isNotEmpty) 'controlCode': t('control_code'),
            'names': namesId,
            'isCustomer': ?isCustomer,
            'isSupplier': ?isSupplier,
            'isLogistics': ?isLogistics,
            if (t('mail').isNotEmpty) 'mail': t('mail'),
            'mstrCurrencyId': t('mstr_currency_id'),
            'acceptanceDay': ?acceptanceDay,
            if (t('remarks').isNotEmpty) 'remarks': t('remarks'),
            if (au != null) 'updateUserId': au.staffId,
            if (au != null) 'updateUserHistoryId': au.staffHistoryId,
          }),
        ),
      );
      final e = result.exception;
      if (e != null) _throwMapped(e);
      final created = result.parsedData?.createMstrStakeholder?.mstrStakeholder;
      if (created == null) throw StateError('利害関係者を登録できませんでした');
      id = created.mstrStakeholderId;
    } else {
      id = record.id;
      String? clearable(String key) => t(key).isEmpty ? null : t(key);
      final patch = <String, dynamic>{
        if (changed('code')) 'code': t('code'),
        if (changed('control_code')) 'controlCode': clearable('control_code'),
        'isCustomer': ?isCustomer,
        'isSupplier': ?isSupplier,
        'isLogistics': ?isLogistics,
        if (changed('mail')) 'mail': clearable('mail'),
        if (changed('mstr_currency_id'))
          'mstrCurrencyId': t('mstr_currency_id'),
        // 検収日は、空にしたときは NULL(月末)にする
        if (changed('acceptance_day')) 'acceptanceDay': acceptanceDay,
        if (changed('remarks')) 'remarks': clearable('remarks'),
      };
      if (patch.isNotEmpty) {
        final result = await client.mutate$StakeholderPageEdit(
          Options$Mutation$StakeholderPageEdit(
            variables: Variables$Mutation$StakeholderPageEdit.fromJson({
              'mstrStakeholderId': id,
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
    final result = await client.mutate$StakeholderPageRemove(
      Options$Mutation$StakeholderPageRemove(
        variables: Variables$Mutation$StakeholderPageRemove(
          mstrStakeholderId: id,
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

  static String _yesNo(bool? v) => v == null ? '' : (v ? 'はい' : 'いいえ');

  EntityRecord _record(Query$StakeholderPageRead$allMstrStakeholders$nodes n) {
    final labels = n.labels;
    return EntityRecord(
      id: n.mstrStakeholderId,
      values: {
        'code': _text(n.code),
        'control_code': _text(n.controlCode),
        'name': _dict(labels?.sharedDictionaryBySharedDictionaryNameId),
        'pronunciation': _dict(
          labels?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _dict(labels?.sharedDictionaryBySharedDictionaryNicknameId),
        'is_customer': _yesNo(n.isCustomer),
        'is_supplier': _yesNo(n.isSupplier),
        'is_logistics': _yesNo(n.isLogistics),
        'mail': _text(n.mail),
        'mstr_shipping_kind_id': _text(n.mstrShippingKindId),
        'mstr_currency_id': _text(n.mstrCurrencyId),
        'acceptance_day': _text(n.acceptanceDay),
        'remarks': _text(n.remarks),
      },
    );
  }

  Future<List<Query$StakeholderPageRead$allMstrStakeholders$nodes>> _readNodes(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$StakeholderPageRead(
      Options$Query$StakeholderPageRead(
        variables: Variables$Query$StakeholderPageRead.fromJson({
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
          in result.parsedData?.allMstrStakeholders?.nodes ??
              const <Query$StakeholderPageRead$allMstrStakeholders$nodes?>[])
        ?n,
    ];
  }

  /// 1件(呼称の ID を含む生成された型のまま)。更新のとき、既存の呼称の ID を引くのに使う。
  Future<Query$StakeholderPageRead$allMstrStakeholders$nodes?> _readNode(
    String id,
  ) async {
    final rows = await _readNodes(1, 0, {
      'mstrStakeholderId': {'equalTo': id},
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
