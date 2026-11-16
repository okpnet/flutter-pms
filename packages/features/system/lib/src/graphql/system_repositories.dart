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
  return [_UnitRepository(_unitDefinition, client, language, auditUser)];
}

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
  }) async => [for (final n in await _readNodes(take, skip, const {})) _record(n)];

  @override
  Future<EntityRecord?> findById(String id) async {
    final n = await _readNode(id);
    return n == null ? null : _record(n);
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}
