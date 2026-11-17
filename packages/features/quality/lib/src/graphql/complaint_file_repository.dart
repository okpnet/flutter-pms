import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart'
    show AuditUserSource, SharedFileLink;
import 'package:quality_model/quality_model.dart';

/// 異常報告のファイル(`compfile`)の取得元(GraphQL 版)。共有ファイルのつなぎ方の基準の実装。
///
/// ファイルのバイナリは PocketBase(`app_files`)にだけあり、DB は `trans_file` の行(名前・種類。`binary_data` は空文字)と、
/// 異常報告とのつなぎ(`trans_complaint_file`)だけを持つ。保存の順は次のとおり:
/// ① 選んだファイルを PocketBase へ上げる(`app_file_id` は窓口が作った UUID。[IEntityFileTransfer.upload])
/// → ② その ID を `trans_file_id` にして、`trans_file` の行とつなぎを **1 回の入れ子の登録(1 トランザクション)**で登録する。
/// ① が失敗したら DB には何もしない。② が失敗したら全部ロールバックされ、PocketBase に参照されないファイルだけが残る
/// (利用者の権限では削除できない。DB の行は無いので無害。`issue/C_20261117_0004.md`)。
/// DB の `trans_file` のトリガーは、渡された主キー(= `app_file_id`)をそのまま使う(ほかの表は DB が採番する)。
/// 差し替えは、新しいファイルを上げて、新しい `trans_file` の行を作りながら `trans_file_id` を付け替える(1 トランザクション)。
/// 取り消しは論理削除(`remove = true`)。更新者は [AuditUserSource] で受けて送る。
///
/// 入れ子の登録は、生成器(`gql/*.yaml`)が対応していないため、`pms_graphql` の [SharedFileLink] が GraphQL の文を組み立てる。
/// 台帳(親の指定なし)は空。親(異常報告)ごとの一覧は [findByParent]。日付は、DB に専用の列が無いため、更新日時を出す(読み取り専用)。
/// 生成された型は、この中だけで使い、外へ出さない。
///
/// パターン: Adapter(生成された読み込みの型と、画面の [EntityRecord] を変換する)
class ComplaintFileRepository implements IEntityRepository {
  ComplaintFileRepository(
    EntityDefinition definition,
    this._client,
    this._languageId,
    this._auditUser,
    this._transfer,
  ) : definition = _definitionOf(definition);

  /// 画面案の項目のうち、日付は DB に無い(更新日時の読み取り専用にする)。ファイルは必須。
  static EntityDefinition _definitionOf(EntityDefinition d) => EntityDefinition(
    key: d.key,
    owner: d.owner,
    fields: [
      for (final f in d.fields)
        if (f.key == 'date')
          const FieldDefinition(
            key: 'date',
            kind: FieldKind.date,
            required: false,
            readOnly: true,
          )
        else
          f,
    ],
  );

  @override
  final EntityDefinition definition;
  final GraphQLClient _client;
  final Future<String> Function() _languageId;
  final AuditUserSource? _auditUser;
  final IEntityFileTransfer _transfer;

  static String _date(Object? v) {
    final s = v == null ? '' : '$v';
    return s.length >= 10 ? s.substring(0, 10) : s;
  }

  EntityRecord _record(
    Query$ComplaintFilePageRead$allTransComplaintFiles$nodes n,
  ) {
    final f = n.file;
    return EntityRecord(
      id: n.transComplaintFileId,
      parentId: n.transComplaintId,
      values: {
        'file': f == null
            ? ''
            : EntityFile(
                id: f.transFileId,
                name: f.name,
                mediaType: f.mediaType ?? '',
              ).toValue(),
        'date': _date(n.updateAt),
      },
    );
  }

  Future<List<EntityRecord>> _read(
    String complaintId,
    int first,
    int offset,
  ) async {
    final result = await _client.query$ComplaintFilePageRead(
      Options$Query$ComplaintFilePageRead(
        variables: Variables$Query$ComplaintFilePageRead(
          first: first,
          offset: offset,
          languageCodeId: await _languageId(),
          transComplaintId: complaintId,
          orderBy: [Enum$TransComplaintFilesOrderBy.UPDATE_AT_DESC],
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allTransComplaintFiles?.nodes ??
              const <
                Query$ComplaintFilePageRead$allTransComplaintFiles$nodes?
              >[])
        ?n == null ? null : _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => const [];

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async =>
      parentId == null ? const [] : _read(parentId, 1000, 0);

  @override
  Future<EntityRecord?> findById(String id) async {
    final r = await _client.query$ComplaintFilePageRfe(
      Options$Query$ComplaintFilePageRfe(
        variables: Variables$Query$ComplaintFilePageRfe(
          transComplaintFileId: id,
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    final n = r.parsedData?.transComplaintFileByTransComplaintFileId;
    if (n == null || n.remove == true) return null;
    final rows = await _read(n.transComplaintId, 1000, 0);
    for (final x in rows) {
      if (x.id == id) return x;
    }
    return null;
  }

  static const _link = SharedFileLink(
    type: 'TransComplaintFile',
    fields: {'transComplaintId': 'UUID'},
  );

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    final file = EntityFile.tryParse(record.valueOf('file'));
    if (file == null) {
      throw const EntityValidationException({
        'file': EntityFieldError.required,
      });
    }
    final au = await _auditUser?.call();
    if (record.id.isEmpty) {
      final complaintId = record.parentId;
      if (complaintId == null || complaintId.isEmpty) {
        throw const EntityValidationException({
          EntityValidationException.parentKey: EntityFieldError.required,
        });
      }
      // ① PocketBase へ上げる(失敗したら DB には何もしない) ② trans_file とつなぎを 1 トランザクションで登録する
      final stored = await _transfer.ensureUploaded(file);
      final id = await _link.attach(
        _client,
        fileId: stored.id,
        values: {'transComplaintId': complaintId},
        name: stored.name,
        mediaType: stored.mediaType,
        staffId: au?.staffId,
        staffHistoryId: au?.staffHistoryId,
      );
      return EntityRecord(
        id: id,
        parentId: complaintId,
        values: {...record.values, 'file': stored.toValue()},
      );
    }
    // 更新: ファイルが変わったとき(選び直した)だけ、新しいファイルを上げて、行を作りながら付け替える
    final current = await findById(record.id);
    if (current == null) throw StateError('異常報告のファイルが見つかりません');
    if (EntityFile.tryParse(current.valueOf('file'))?.id == file.id) {
      return record;
    }
    final stored = await _transfer.ensureUploaded(file);
    await _link.replace(
      _client,
      linkId: record.id,
      fileId: stored.id,
      name: stored.name,
      mediaType: stored.mediaType,
      staffId: au?.staffId,
      staffHistoryId: au?.staffHistoryId,
    );
    return EntityRecord(
      id: record.id,
      parentId: record.parentId,
      values: {...record.values, 'file': stored.toValue()},
    );
  }

  @override
  Future<void> remove(String id) async {
    final au = await _auditUser?.call();
    final r = await _client.mutate$ComplaintFilePageRemove(
      Options$Mutation$ComplaintFilePageRemove(
        variables: Variables$Mutation$ComplaintFilePageRemove(
          transComplaintFileId: id,
          remove: true,
          updateUserId: au?.staffId,
          updateUserHistoryId: au?.staffHistoryId,
        ),
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
  }
}
