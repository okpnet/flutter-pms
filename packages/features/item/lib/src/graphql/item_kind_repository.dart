import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:localized_values/localized_values.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;
import 'package:item_model/item_model.dart';

/// 品目区分(`itemKind`。DB の `mstr_itemKind`)の取得元(GraphQL 版。書き込みできる)。
///
/// 書き込みは、共通関数 + ミューテーション(CLAUDE.md「登録・更新の方式」。`system` の単位が前例):
/// 1. 名称・読み・略称(呼称)は、共通関数 `shared_appellation_save` で作る・変える
///    (渡した言語 `ja` の値だけ入れ替わる。更新は、読み込んだ値から変わった項目だけ送る)。
/// 2. 返った ID を、本体の `names` に渡して、登録(`ItemKindPageCreate`)・更新(`ItemKindPageEdit`)する。
/// 3. 保存のあと読み直して返す(同じ値の更新は履歴のトリガーが握りつぶし、応答の行が null になるため)。
/// 削除は論理削除(`ItemKindPageRemove`。`remove = true`)。更新者は、ログイン中の担当者を [AuditUserSource] で受けて送る。
/// コードは任意で、重複を止める一意索引は無い(記号 `symbol` だけが一意)。
/// 記号(`symbol`)は DB が採番する。生成された型は、この中だけで使い、外へ出さない。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
class ItemKindRepository implements IEntityRepository {
  ItemKindRepository(
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
    if (message.contains('mstr_itemKind_ix_code_active')) {
      throw const EntityValidationException({
        'code': EntityFieldError.duplicate,
      });
    }
    throw e;
  }

  static String _text(Object? v) => v == null ? '' : '$v';

  static String _dict(dynamic dictionary) =>
      LocalizedValues.fromDictionary(dictionary).resolve('ja');

  EntityRecord _record(Query$ItemKindPageRead$allMstrItemKinds$nodes n) {
    final l = n.labels;
    return EntityRecord(
      id: n.mstrItemKindId,
      values: {
        'code': _text(n.code),
        'name': _dict(l?.sharedDictionaryBySharedDictionaryNameId),
        'pronunciation': _dict(
          l?.sharedDictionaryBySharedDictionaryPronunciationId,
        ),
        'nickname': _dict(l?.sharedDictionaryBySharedDictionaryNicknameId),
        'remarks': _text(n.remarks),
      },
    );
  }

  Future<List<Query$ItemKindPageRead$allMstrItemKinds$nodes>> _readNodes(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await client.query$ItemKindPageRead(
      Options$Query$ItemKindPageRead(
        variables: Variables$Query$ItemKindPageRead.fromJson({
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
          in result.parsedData?.allMstrItemKinds?.nodes ??
              const <Query$ItemKindPageRead$allMstrItemKinds$nodes?>[])
        ?n,
    ];
  }

  Future<Query$ItemKindPageRead$allMstrItemKinds$nodes?> _readNode(
    String id,
  ) async {
    final rows = await _readNodes(1, 0, {
      'mstrItemKindId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    String t(String key) => record.valueOf(key).trim();
    final errors = <String, EntityFieldError>{
      if (t('name').isEmpty) 'name': EntityFieldError.required,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final isNew = record.id.isEmpty;
    final node = isNew ? null : await _readNode(record.id);
    if (!isNew && node == null) throw StateError('品目区分が見つかりません');
    final before = node == null ? null : _record(node);
    bool changed(String key) =>
        isNew ? t(key).isNotEmpty : t(key) != (before?.valueOf(key) ?? '');
    final au = await _updater();

    // 1. 呼称(名称・読み)
    var namesId = node?.labels?.sharedAppellationsId;
    final nameChanged = isNew || changed('name');
    final pronunciationChanged = changed('pronunciation');
    final nicknameChanged = changed('nickname');
    if (nameChanged || pronunciationChanged || nicknameChanged) {
      final result = await client.mutate$ItemKindAppellationSavePageCall(
        Options$Mutation$ItemKindAppellationSavePageCall(
          variables: Variables$Mutation$ItemKindAppellationSavePageCall(
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
      if (namesId == null) throw StateError('品目区分の名称を保存できませんでした');
    }

    // 2. 本体(平らな列だけ)。更新は、渡した列だけが変わる(null は消す)
    final String id;
    if (isNew) {
      final result = await client.mutate$ItemKindPageCreate(
        Options$Mutation$ItemKindPageCreate(
          variables: Variables$Mutation$ItemKindPageCreate.fromJson({
            if (t('code').isNotEmpty) 'code': t('code'),
            'names': namesId,
            if (t('remarks').isNotEmpty) 'remarks': t('remarks'),
            if (au != null) 'updateUserId': au.staffId,
            if (au != null) 'updateUserHistoryId': au.staffHistoryId,
          }),
        ),
      );
      final e = result.exception;
      if (e != null) _throwMapped(e);
      final created = result.parsedData?.createMstrItemKind?.mstrItemKind;
      if (created == null) throw StateError('品目区分を登録できませんでした');
      id = created.mstrItemKindId;
    } else {
      id = record.id;
      String? nullable(String key) => t(key).isEmpty ? null : t(key);
      final patch = <String, dynamic>{
        if (changed('code')) 'code': nullable('code'),
        if (changed('remarks')) 'remarks': nullable('remarks'),
      };
      if (patch.isNotEmpty) {
        final result = await client.mutate$ItemKindPageEdit(
          Options$Mutation$ItemKindPageEdit(
            variables: Variables$Mutation$ItemKindPageEdit.fromJson({
              'mstrItemKindId': id,
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
    final result = await client.mutate$ItemKindPageRemove(
      Options$Mutation$ItemKindPageRemove(
        variables: Variables$Mutation$ItemKindPageRemove(
          mstrItemKindId: id,
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
