import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;
import 'package:quality_model/quality_model.dart';

/// 異常報告のファイル(`compfile`)の取得元(GraphQL 版)。共有ファイルのつなぎ方の基準の実装。
///
/// ファイルの実体は PocketBase にだけあり、DB は `trans_file` の行(名前・種類と、PocketBase のファイル ID)と、
/// 異常報告とのつなぎ(`trans_complaint_file`)だけを持つ。`trans_file_id`(主キー)は DB のトリガーが採番する(クライアントが
/// 決めた値は無視される)ため、画面が上げたファイル([EntityFile])の ID(PocketBase のファイル ID)は、`binary_data` 列に入れる
/// (`issue/20261117_0004.md`)。保存の順は ① `trans_file` の行 ② `trans_complaint_file`。
/// 2 つは別のトランザクションのため、② が失敗すると ① の行が残る(参照されない行。マスタ・Info と同じく許容する)。
/// 差し替えは、新しいファイルの行を作って `trans_file_id` を付け替える(古いファイルは PocketBase・DB に残る)。
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
                id: f.binaryData,
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

  /// `trans_file` の行を作り、DB が採番した `trans_file_id` を返す(ファイルの実体は PocketBase。ここは名前・種類と PocketBase の ID だけ)。
  Future<String> _createFileRow(EntityFile file) async {
    final au = await _auditUser?.call();
    final r = await _client.mutate$ComplaintFileBodyPageCreate(
      Options$Mutation$ComplaintFileBodyPageCreate(
        variables: Variables$Mutation$ComplaintFileBodyPageCreate(
          binaryData: file.id,
          name: file.name,
          mediaType: file.mediaType,
          updateUserId: au?.staffId,
          updateUserHistoryId: au?.staffHistoryId,
        ),
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    final id = r.parsedData?.createTransFile?.transFile?.transFileId;
    if (id == null) throw StateError('ファイルの行を保存できませんでした');
    return id;
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
      final fileRowId = await _createFileRow(file);
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
      final id = r
          .parsedData
          ?.createTransComplaintFile
          ?.transComplaintFile
          ?.transComplaintFileId;
      if (id == null) throw StateError('異常報告のファイルを保存できませんでした');
      return EntityRecord(id: id, parentId: complaintId, values: record.values);
    }
    // 更新: ファイル(PocketBase の ID)が変わったときだけ、新しい行を作って付け替える
    final current = await findById(record.id);
    if (current == null) throw StateError('異常報告のファイルが見つかりません');
    if (EntityFile.tryParse(current.valueOf('file'))?.id != file.id) {
      final fileRowId = await _createFileRow(file);
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
