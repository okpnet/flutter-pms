import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart'
    show AuditUserSource, SharedFileLink;
import 'package:resource_model/resource_model.dart';

import '../entities/resource_definitions.dart';

/// 設備点検の実績の連なり(点検予定 → 予定明細 → 点検実施 → ファイル)の取得元(GraphQL 版)。
///
/// 点検予定・予定明細・点検実施は読み取り専用(親の ID ごとの一覧)。DB の列と画面案の項目が合わないものは、合う範囲だけを写す:
/// 予定明細の担当(DB は利害関係者)・点検実施の担当は空、点検実施の結果(合格/不合格)は DB の真偽(`result`)から、結果の値は JSON の文字列。
/// ファイル(`inspectionfile`)は書き込みできる([InspectionFileRepository])。
/// 生成された型は、この中だけで使い、外へ出さない。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する)
List<IEntityRepository> inspectionRepositories(
  GraphQLClient client,
  Future<String> Function() languageId, {
  AuditUserSource? auditUser,
  IEntityFileTransfer fileTransfer = const UnsupportedEntityFileTransfer(),
}) => [
  _ScheduleRepository(_readOnly('inspectionschedule'), client, languageId),
  _ScheduleDetailRepository(_readOnly('scheduledetail'), client, languageId),
  _ResultRepository(_readOnly('inspectionresult'), client, languageId),
  InspectionFileRepository(
    _fileDefinition(),
    client,
    languageId,
    auditUser,
    fileTransfer,
  ),
];

EntityDefinition _readOnly(String key) {
  final d = resourceDefinitions.firstWhere((d) => d.key == key);
  return EntityDefinition(
    key: d.key,
    owner: d.owner,
    uniqueKeys: d.uniqueKeys,
    reverseLists: d.reverseLists,
    fields: [
      for (final f in d.fields)
        FieldDefinition(
          key: f.key,
          kind: f.kind,
          required: false,
          readOnly: true,
          options: f.options,
          reference: f.reference,
        ),
    ],
    viewOnly: true,
  );
}

/// 画面案の項目のうち、登録日は DB に専用の列が無い(更新日時の読み取り専用にする)。
EntityDefinition _fileDefinition() {
  final d = resourceDefinitions.firstWhere((d) => d.key == 'inspectionfile');
  return EntityDefinition(
    key: d.key,
    owner: d.owner,
    fields: [
      for (final f in d.fields)
        if (f.key == 'regdate')
          const FieldDefinition(
            key: 'regdate',
            kind: FieldKind.date,
            required: false,
            readOnly: true,
          )
        else
          f,
    ],
  );
}

String _text(Object? v) => v == null ? '' : '$v';

String _date(Object? v) {
  final s = _text(v);
  return s.length >= 10 ? s.substring(0, 10) : s;
}

/// ラベル(`value.nodes[0].labelValue`)の、言語コード指定の値。
String _label(dynamic l) {
  final nodes = l?.value?.nodes as List?;
  return nodes == null || nodes.isEmpty ? '' : _text(nodes.first.labelValue);
}

abstract class _ReadOnlyChildRepository implements IEntityRepository {
  _ReadOnlyChildRepository(this.definition, this.client, this.languageId);

  @override
  final EntityDefinition definition;
  final GraphQLClient client;
  final Future<String> Function() languageId;

  @override
  Future<EntityRecord> save(EntityRecord record) =>
      throw UnsupportedError('${definition.key}: 読み取り専用です');

  @override
  Future<void> remove(String id) =>
      throw UnsupportedError('${definition.key}: 読み取り専用です');

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => const [];
}

/// 点検予定(`inspectionschedule`)。
class _ScheduleRepository extends _ReadOnlyChildRepository {
  _ScheduleRepository(super.definition, super.client, super.languageId);

  EntityRecord _record(Query$InspectSchPageRead$allTransInspectSches$nodes n) =>
      EntityRecord(
        id: n.transInspectSchId,
        values: {
          'code': _text(n.code),
          'name': _label(n.labels),
          'operation': _text(n.inspectionOperationId),
        },
      );

  Future<List<EntityRecord>> _read(
    int first,
    Map<String, dynamic> filter,
  ) async {
    final r = await client.query$InspectSchPageRead(
      Options$Query$InspectSchPageRead(
        variables: Variables$Query$InspectSchPageRead.fromJson({
          'first': first,
          'offset': 0,
          'languageCodeId': await languageId(),
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    return [
      for (final n
          in r.parsedData?.allTransInspectSches?.nodes ??
              const <Query$InspectSchPageRead$allTransInspectSches$nodes?>[])
        if (n != null) _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) => _read(take, const {});

  @override
  Future<EntityRecord?> findById(String id) async {
    final rows = await _read(1, {
      'transInspectSchId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];
}

/// 予定明細(`scheduledetail`。点検予定の子)。
class _ScheduleDetailRepository extends _ReadOnlyChildRepository {
  _ScheduleDetailRepository(super.definition, super.client, super.languageId);

  EntityRecord _record(
    Query$InspectSchDetailPageRead$allTransInspectSchDetails$nodes n,
  ) => EntityRecord(
    id: n.transInspectSchDetailId,
    parentId: n.transInspectSchId,
    values: {
      'item': _text(n.inspectionId),
      'start': _date(n.scheduledStartDate),
      'end': _date(n.scheduledEndDate),
      'staff': '',
    },
  );

  Future<List<EntityRecord>> _of(String scheduleId) async {
    final r = await client.query$InspectSchDetailPageRead(
      Options$Query$InspectSchDetailPageRead(
        variables: Variables$Query$InspectSchDetailPageRead.fromJson({
          'first': 1000,
          'offset': 0,
          'languageCodeId': await languageId(),
          'transInspectSchId': scheduleId,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    return [
      for (final n
          in r.parsedData?.allTransInspectSchDetails?.nodes ??
              const <
                Query$InspectSchDetailPageRead$allTransInspectSchDetails$nodes?
              >[])
        if (n != null) _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async =>
      parentId == null ? const [] : _of(parentId);

  @override
  Future<EntityRecord?> findById(String id) async {
    final r = await client.query(
      QueryOptions(
        document: gql(
          'query(\$id: UUID!) { transInspectSchDetailByTransInspectSchDetailId(transInspectSchDetailId: \$id) { transInspectSchId } }',
        ),
        variables: {'id': id},
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    final scheduleId =
        (r.data?['transInspectSchDetailByTransInspectSchDetailId']
                as Map?)?['transInspectSchId']
            as String?;
    if (scheduleId == null) return null;
    for (final x in await _of(scheduleId)) {
      if (x.id == id) return x;
    }
    return null;
  }
}

/// 点検実施(`inspectionresult`。予定明細の子)。結果(合格/不合格)は DB の真偽から。
class _ResultRepository extends _ReadOnlyChildRepository {
  _ResultRepository(super.definition, super.client, super.languageId);

  EntityRecord _record(
    Query$InspectRecordPageRead$allTransInspectRecords$nodes n,
  ) {
    final notes = n.noteTexts?.value.nodes;
    return EntityRecord(
      id: n.transInspectRecordId,
      parentId: n.transInspectSchDetailId,
      values: {
        'date': _date(n.implementStartDate),
        'staff': '',
        'result': n.result == null ? '' : (n.result! ? '合格' : '不合格'),
        'value': n.resultValue == null ? '' : '${n.resultValue}',
        'note': notes == null || notes.isEmpty
            ? ''
            : _text(notes.first?.leadText),
      },
    );
  }

  Future<List<EntityRecord>> _of(String detailId) async {
    final r = await client.query$InspectRecordPageRead(
      Options$Query$InspectRecordPageRead(
        variables: Variables$Query$InspectRecordPageRead.fromJson({
          'first': 1000,
          'offset': 0,
          'languageCodeId': await languageId(),
          'transInspectSchDetailId': detailId,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    return [
      for (final n
          in r.parsedData?.allTransInspectRecords?.nodes ??
              const <
                Query$InspectRecordPageRead$allTransInspectRecords$nodes?
              >[])
        if (n != null) _record(n),
    ];
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async =>
      parentId == null ? const [] : _of(parentId);

  @override
  Future<EntityRecord?> findById(String id) async {
    final r = await client.query(
      QueryOptions(
        document: gql(
          'query(\$id: UUID!) { transInspectRecordByTransInspectRecordId(transInspectRecordId: \$id) { transInspectSchDetailId } }',
        ),
        variables: {'id': id},
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    final detailId =
        (r.data?['transInspectRecordByTransInspectRecordId']
                as Map?)?['transInspectSchDetailId']
            as String?;
    if (detailId == null) return null;
    for (final x in await _of(detailId)) {
      if (x.id == id) return x;
    }
    return null;
  }
}

/// 点検のファイル(`inspectionfile`。点検実施の子)の取得元(書き込みできる)。
///
/// ファイルのバイナリは PocketBase(`app_files`)にだけあり、DB は `trans_file` の行(名前・種類)と、`trans_inspect_imp_file`
/// (点検実施・題名・ファイル)だけを持つ。保存の順は、共有ファイルの基準(`quality` の `ComplaintFileRepository`)と同じ:
/// ① 題名(`titles`。ファイル名)を共通関数(`trans_label_save`)で作る ② 選んだファイルを PocketBase へ上げる
/// ([IEntityFileTransfer.upload]) ③ その ID を `trans_file_id` にして、`trans_file` の行と `trans_inspect_imp_file` の行を
/// **1 トランザクション**で登録する([SharedFileLink])。③ が失敗したら DB には何も残らない。
/// 取り消しは論理削除(`remove = true`)。更新者は [AuditUserSource] で受けて送る。
///
/// パターン: Adapter(生成された読み込み・登録の型と、画面の [EntityRecord] を変換する)
class InspectionFileRepository implements IEntityRepository {
  InspectionFileRepository(
    this.definition,
    this._client,
    this._languageId,
    this._auditUser,
    this._transfer,
  );

  @override
  final EntityDefinition definition;
  final GraphQLClient _client;
  final Future<String> Function() _languageId;
  final AuditUserSource? _auditUser;
  final IEntityFileTransfer _transfer;

  static const _link = SharedFileLink(
    type: 'TransInspectImpFile',
    fields: {'transInspectRecordId': 'UUID', 'titles': 'UUID'},
  );

  EntityRecord _record(
    Query$InspectImpFilePageRead$allTransInspectImpFiles$nodes n,
  ) {
    final f = n.file;
    return EntityRecord(
      id: n.transInspectImpFileId,
      parentId: n.transInspectRecordId,
      values: {
        'file': f == null
            ? ''
            : EntityFile(
                id: f.transFileId,
                name: f.name,
                mediaType: f.mediaType ?? '',
              ).toValue(),
        'regdate': _date(n.updateAt),
      },
    );
  }

  Future<List<EntityRecord>> _read(String recordId) async {
    final r = await _client.query$InspectImpFilePageRead(
      Options$Query$InspectImpFilePageRead(
        variables: Variables$Query$InspectImpFilePageRead.fromJson({
          'first': 1000,
          'offset': 0,
          'languageCodeId': await _languageId(),
          'transInspectRecordId': recordId,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    return [
      for (final n
          in r.parsedData?.allTransInspectImpFiles?.nodes ??
              const <
                Query$InspectImpFilePageRead$allTransInspectImpFiles$nodes?
              >[])
        if (n != null) _record(n),
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
      parentId == null ? const [] : _read(parentId);

  Future<
    Query$InspectionFilePageRfe$transInspectImpFileByTransInspectImpFileId?
  >
  _row(String id) async {
    final r = await _client.query$InspectionFilePageRfe(
      Options$Query$InspectionFilePageRfe(
        variables: Variables$Query$InspectionFilePageRfe(
          transInspectImpFileId: id,
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    final n = r.parsedData?.transInspectImpFileByTransInspectImpFileId;
    return n == null || n.remove == true ? null : n;
  }

  @override
  Future<EntityRecord?> findById(String id) async {
    final row = await _row(id);
    if (row == null) return null;
    for (final r in await _read(row.transInspectRecordId)) {
      if (r.id == id) return r;
    }
    return null;
  }

  /// 題名を共通関数で作る・変える。返ったラベルの ID を返す。
  Future<String> _saveTitle(
    String? labelId,
    String title,
    String? staffId,
    String? historyId,
  ) async {
    final r = await _client.mutate$InspectionFileLabelSavePageCall(
      Options$Mutation$InspectionFileLabelSavePageCall(
        variables: Variables$Mutation$InspectionFileLabelSavePageCall(
          pLabelId: labelId,
          pValues: {'ja': title},
          pStaffId: staffId,
          pStaffHistoryId: historyId,
        ),
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    final id = r.parsedData?.transLabelSave?.transLabel?.transLabelId;
    if (id == null) throw StateError('点検ファイルの題名を保存できませんでした');
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
      final recordId = record.parentId;
      if (recordId == null || recordId.isEmpty) {
        throw const EntityValidationException({
          EntityValidationException.parentKey: EntityFieldError.required,
        });
      }
      // 題名はファイル名。保存先へ上げてから、trans_file と点検ファイルを 1 トランザクションで登録する
      final stored = await _transfer.ensureUploaded(file);
      final titlesId = await _saveTitle(
        null,
        stored.name,
        au?.staffId,
        au?.staffHistoryId,
      );
      final id = await _link.attach(
        _client,
        fileId: stored.id,
        name: stored.name,
        mediaType: stored.mediaType,
        values: {'transInspectRecordId': recordId, 'titles': titlesId},
        staffId: au?.staffId,
        staffHistoryId: au?.staffHistoryId,
      );
      return EntityRecord(
        id: id,
        parentId: recordId,
        values: {...record.values, 'file': stored.toValue()},
      );
    }

    // 更新: ファイルが変わったとき(選び直した)だけ、新しいファイルを上げて付け替える(題名も新しいファイル名にする)
    final row = await _row(record.id);
    final current = await findById(record.id);
    if (row == null || current == null) {
      throw StateError('点検ファイルが見つかりません');
    }
    if (EntityFile.tryParse(current.valueOf('file'))?.id == file.id) {
      return record;
    }
    final stored = await _transfer.ensureUploaded(file);
    await _saveTitle(row.titles, stored.name, au?.staffId, au?.staffHistoryId);
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
      parentId: row.transInspectRecordId,
      values: {...record.values, 'file': stored.toValue()},
    );
  }

  @override
  Future<void> remove(String id) async {
    final au = await _auditUser?.call();
    final r = await _client.mutate$InspectionFilePageRemove(
      Options$Mutation$InspectionFilePageRemove(
        variables: Variables$Mutation$InspectionFilePageRemove(
          transInspectImpFileId: id,
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
