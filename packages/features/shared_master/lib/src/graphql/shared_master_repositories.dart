import 'package:localized_values/localized_values.dart';
import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:shared_master_model/shared_master_model.dart';

import '../entities/shared_master_definitions.dart';

/// 共有マスタの実体の取得元(GraphQL 版)。アプリが [GraphQLClient] を渡して組み立て、
/// `entityRepositoryOverridesProvider` に渡すと、サンプル(メモリ上)の代わりに使われる。
///
/// 【暫定】書き込みは、適用済みの `stakeholder_save`(マスタごとの保存関数。方針に合わないため、いずれ外す)を使っている。
/// 共通関数(`shared_appellation_save`)と、平らなミューテーション(利害関係者の create・update)に入れ替える
/// (`issue/20261115_0001.md`・`tools/docker/postgresql/issue/20261115_0001.md`)。
///
/// 対象は利害関係者(`stakeholder`。顧客・外部供給者・運送業者をフラグで見分ける)。名称・読み・略称は多言語の辞書
/// (`shared_appellation`)で、言語コード `ja` の値を読み書きする(他の言語の値は触らない)。登録・更新は DB の関数
/// `stakeholder_save`(`doc/query/20261114_0002_appellation_functions.sql`。辞書・呼称・本体を1回の呼び出し = 1トランザクションで行う)、
/// 削除は論理削除(`remove = true`)。更新は「渡した項目だけ」の関数で、画面は全項目を持つため、変わった項目だけ送る(役割の選択が空のときも変えない)。
/// 配送区分(`mstr_shipping_kind_id`)は、配送区分の取得元が GraphQL 版になるまで(サンプルの ID は DB に無い)読み取り専用。
/// 担当者(`contact`)・配送区分(`shipkind`)は、サンプルのまま。生成された型は、この中だけで使い、外へ出さない。
/// 抽出条件・並び順は無視する(サンプルと同じ)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> sharedMasterRepositories(GraphQLClient client) {
  final language = _LanguageCode(client);
  return [_StakeholderRepository(_stakeholderDefinition, client, language)];
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

/// DB の関数のエラー(RAISE の文。PostGraphile は errcode を返さない)を、画面の検証エラーにする。それ以外はそのまま投げる。
Never _throwMapped(OperationException e) {
  final message = e.graphqlErrors.map((x) => x.message).join(' ');
  if (message.contains('名称(ja)は必須') || message.contains('名称(ja)は空にできません')) {
    throw const EntityValidationException({'name': EntityFieldError.required});
  }
  if (message.contains('コードは必須')) {
    throw const EntityValidationException({'code': EntityFieldError.required});
  }
  if (message.contains('コードが重複')) {
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
  _StakeholderRepository(this.definition, this.client, this.language);

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final _LanguageCode language;

  /// 登録・更新(DB の関数 stakeholder_save)。更新は、変わった項目だけ送る(読み書きするのは言語コード ja の値だけ)。
  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{
      if (t('code').isEmpty) 'code': EntityFieldError.required,
      if (t('name').isEmpty) 'name': EntityFieldError.required,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);
    final isNew = record.id.isEmpty;
    final existing = isNew ? null : await findById(record.id);
    // 送る項目: 新規は入力のあった項目、更新は読み込んだ値から変わった項目(空に変えたときは空文字で消す)
    bool send(String key) =>
        isNew ? t(key).isNotEmpty : t(key) != (existing?.valueOf(key) ?? '');
    Map<String, String>? ja(String key) => send(key) ? {'ja': t(key)} : null;
    String? text(String key) => send(key) ? t(key) : null;
    // 役割の選択(はい/いいえ)。空・変わらないときは送らない(新規は false)
    bool? flag(String key) => !send(key)
        ? null
        : switch (t(key)) {
            'はい' => true,
            'いいえ' => false,
            _ => null,
          };
    final result = await client.mutate$StakeholderSavePageCall(
      Options$Mutation$StakeholderSavePageCall(
        variables: Variables$Mutation$StakeholderSavePageCall(
          pStakeholderId: isNew ? null : record.id,
          pCode: isNew || send('code') ? t('code') : null,
          pControlCode: text('control_code'),
          pName: isNew || send('name') ? {'ja': t('name')} : null,
          pPronunciation: ja('pronunciation'),
          pNickname: ja('nickname'),
          pIsCustomer: flag('is_customer'),
          pIsSupplier: flag('is_supplier'),
          pIsLogistics: flag('is_logistics'),
          pMail: text('mail'),
          pRemarks: text('remarks'),
        ),
      ),
    );
    final e = result.exception;
    if (e != null) _throwMapped(e);
    final id =
        result.parsedData?.stakeholderSave?.mstrStakeholder?.mstrStakeholderId;
    if (id == null) throw StateError('利害関係者を保存できませんでした');
    return (await findById(id)) ?? record;
  }

  /// 論理削除(`remove = true`)。物理削除はしない。使用中かの判定は呼び出し側([EntityCatalog])が行う。
  @override
  Future<void> remove(String id) async {
    final result = await client.mutate$StakeholderPageRemove(
      Options$Mutation$StakeholderPageRemove(
        variables: Variables$Mutation$StakeholderPageRemove(
          mstrStakeholderId: id,
          remove: true,
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
        'remarks': _text(n.remarks),
      },
    );
  }

  Future<List<EntityRecord>> _read(
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
        if (n != null) _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) => _read(take, skip, const {});

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _read(1, 0, {
      'mstrStakeholderId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
