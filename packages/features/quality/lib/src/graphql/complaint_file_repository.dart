import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;
import 'package:quality_model/quality_model.dart';

/// 異常報告のファイル(`compfile`)の取得元(GraphQL 版)。共有ファイルのつなぎ方の基準の実装。
///
/// ファイルのバイナリは PocketBase(`app_files`)にだけあり、DB は `trans_file` の行(名前・種類。`binary_data` は空文字)と、
/// 異常報告とのつなぎ(`trans_complaint_file`)だけを持つ。DB の主キー(`trans_file_id`)はトリガーが採番する(クライアントが
/// 決めた値は無視される)ため、保存の順は次のとおり:
/// ① `trans_file` の行を作って ID を得る → ② その ID を PocketBase の `app_file_id` にして、バイナリを上げる
/// ([IEntityFileTransfer.upload]) → ③ `trans_complaint_file` でつなぐ。
/// ② が失敗したら、① の行を論理削除して失敗にする。③ が失敗したときも、① の行を論理削除する(PocketBase に上がったファイルは、
/// 利用者の権限では削除できないため、参照されないまま残る。`app_file_id` で DB の行と突き合わせて、管理者が掃除する)。
/// 差し替えは、新しい行・ファイルを作って `trans_file_id` を付け替える(古い行・ファイルは残る。PocketBase は上書きしない)。
/// 取り消しは論理削除(`remove = true`)。更新者は [AuditUserSource] で受けて送る。
///
/// 台帳(親の指定なし)は空。親(異常報告)ごとの一覧は [findByParent]。日付は、DB に専用の列が無いため、更新日時を出す(読み取り専用)。
/// 生成された型は、この中だけで使い、外へ出さない。
///
/// パターン: Adapter(生成された読み込み・登録の型と、画面の [EntityRecord] を変換する)
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

  /// 選んだファイル [picked] を保存する: `trans_file` の行を作って DB の ID を得て、その ID で PocketBase へ上げる。
  /// 返すのは DB の `trans_file_id`。上げるのに失敗したら、作った行を論理削除して例外を投げる。
  Future<String> _storeFile(EntityFile picked) async {
    final au = await _auditUser?.call();
    final r = await _client.mutate$ComplaintFileBodyPageCreate(
      Options$Mutation$ComplaintFileBodyPageCreate(
        variables: Variables$Mutation$ComplaintFileBodyPageCreate(
          binaryData: '',
          name: picked.name,
          mediaType: picked.mediaType,
          updateUserId: au?.staffId,
          updateUserHistoryId: au?.staffHistoryId,
        ),
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    final id = r.parsedData?.createTransFile?.transFile?.transFileId;
    if (id == null) throw StateError('ファイルの行を保存できませんでした');
    try {
      await _transfer.upload(picked, id);
    } catch (_) {
      await _removeFileRow(id, au?.staffId, au?.staffHistoryId);
      rethrow;
    }
    return id;
  }

  /// 上げられなかった `trans_file` の行を論理削除する(できなくても、元の失敗を優先する)。
  Future<void> _removeFileRow(
    String id,
    String? staffId,
    String? historyId,
  ) async {
    try {
      await _client.mutate(
        MutationOptions(
          document: gql(
            r'mutation($id: UUID!, $u: UUID, $h: UUID) { updateTransFileByTransFileId(input: {transFileId: $id, transFilePatch: {remove: true, updateUserId: $u, updateUserHistoryId: $h}}) { clientMutationId } }',
          ),
          variables: {'id': id, 'u': staffId, 'h': historyId},
        ),
      );
    } catch (_) {}
  }

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
      final fileRowId = file.isPending ? await _storeFile(file) : file.id;
      final String id;
      try {
        final r = await _client.mutate$ComplaintFilePageCreate(
          Options$Mutation$ComplaintFilePageCreate(
            variables: Variables$Mutation$ComplaintFilePageCreate(
              transComplaintId: complaintId,
              transFileId: fileRowId,
              updateUserId: au?.staffId,
              updateUserHistoryId: au?.staffHistoryId,
            ),
          ),
        );
        final e = r.exception;
        if (e != null) throw e;
        final created = r
            .parsedData
            ?.createTransComplaintFile
            ?.transComplaintFile
            ?.transComplaintFileId;
        if (created == null) throw StateError('異常報告のファイルを保存できませんでした');
        id = created;
      } catch (_) {
        // つなげなかった: 今作った trans_file の行を取り消す(PocketBase に上がったファイルは、削除できないため残る)
        if (file.isPending) {
          await _removeFileRow(fileRowId, au?.staffId, au?.staffHistoryId);
        }
        rethrow;
      }
      return EntityRecord(
        id: id,
        parentId: complaintId,
        values: {
          ...record.values,
          'file': EntityFile(
            id: fileRowId,
            name: file.name,
            mediaType: file.mediaType,
          ).toValue(),
        },
      );
    }
    // 更新: ファイルが変わったとき(選び直した・別の ID)だけ、新しい行を作って付け替える
    final current = await findById(record.id);
    if (current == null) throw StateError('異常報告のファイルが見つかりません');
    if (EntityFile.tryParse(current.valueOf('file'))?.id != file.id) {
      final fileRowId = file.isPending ? await _storeFile(file) : file.id;
      try {
        final r = await _client.mutate$ComplaintFilePageEdit(
          Options$Mutation$ComplaintFilePageEdit(
            variables: Variables$Mutation$ComplaintFilePageEdit(
              transComplaintFileId: record.id,
              transFileId: fileRowId,
              updateUserId: au?.staffId,
              updateUserHistoryId: au?.staffHistoryId,
            ),
          ),
        );
        final e = r.exception;
        if (e != null) throw e;
      } catch (_) {
        if (file.isPending) {
          await _removeFileRow(fileRowId, au?.staffId, au?.staffHistoryId);
        }
        rethrow;
      }
    }
    return record;
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
