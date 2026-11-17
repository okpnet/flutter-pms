import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:localized_values/localized_values.dart';
import 'package:pms_graphql/pms_graphql.dart'
    show AuditUserSource, SharedFileLink;
import 'package:resource_model/resource_model.dart';

/// 設備タグ(`equiptag`)の取得元(GraphQL 版。書き込みできる)。
///
/// タグのバイナリは PocketBase(`app_files`)にだけあり、DB は `trans_file` の行(名前・種類)と、`mstr_equipment_tag`
/// (名称・ファイル)だけを持つ。保存の順は、共有ファイルの基準(`quality` の `ComplaintFileRepository`)と同じ:
/// ① 名称(`names`)を共通関数(`shared_appellation_save`)で作る ② 選んだファイルを PocketBase へ上げる
/// ([IEntityFileTransfer.upload]) ③ その ID を `trans_file_id` にして、`trans_file` の行と `mstr_equipment_tag` の行を
/// **1 トランザクション**で登録する([SharedFileLink])。③ が失敗したら DB には何も残らない。
/// 取り消しは論理削除(`remove = true`)。更新者は [AuditUserSource] で受けて送る。
///
/// パターン: Adapter(生成された読み込み・登録の型と、画面の [EntityRecord] を変換する)
class EquipmentTagRepository implements IEntityRepository {
  EquipmentTagRepository(
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
    type: 'MstrEquipmentTag',
    fields: {'names': 'UUID', 'remarks': 'String'},
  );

  EntityRecord _record(
    Query$EquipmentTagPageRead$allMstrEquipmentTags$nodes n,
  ) {
    final f = n.file;
    return EntityRecord(
      id: n.mstrEquipmentTagId,
      values: {
        'name': LocalizedValues.fromDictionary(
          n.labels?.sharedDictionaryBySharedDictionaryNameId,
        ).resolve('ja'),
        'file': f == null
            ? ''
            : EntityFile(
                id: f.transFileId,
                name: f.name,
                mediaType: f.mediaType ?? '',
              ).toValue(),
        'remarks': n.remarks ?? '',
      },
    );
  }

  Future<List<EntityRecord>> _read(
    int first,
    int offset,
    Map<String, dynamic> filter,
  ) async {
    final result = await _client.query$EquipmentTagPageRead(
      Options$Query$EquipmentTagPageRead(
        variables: Variables$Query$EquipmentTagPageRead.fromJson({
          'first': first,
          'offset': offset,
          'languageCodeId': await _languageId(),
          if (filter.isNotEmpty) 'filter': filter,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allMstrEquipmentTags?.nodes ??
              const <Query$EquipmentTagPageRead$allMstrEquipmentTags$nodes?>[])
        ?n == null ? null : _record(n),
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
      'mstrEquipmentTagId': {'equalTo': id},
    });
    return rows.isEmpty ? null : rows.first;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => const [];

  Future<String> _saveName(
    String? appellationId,
    String name,
    String? staffId,
    String? historyId,
  ) async {
    final r = await _client.mutate$EquipmentTagAppellationSavePageCall(
      Options$Mutation$EquipmentTagAppellationSavePageCall(
        variables: Variables$Mutation$EquipmentTagAppellationSavePageCall(
          pAppellationId: appellationId,
          pName: {'ja': name},
          pStaffId: staffId,
          pStaffHistoryId: historyId,
        ),
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    final id = r
        .parsedData
        ?.sharedAppellationSave
        ?.sharedAppellation
        ?.sharedAppellationsId;
    if (id == null) throw StateError('タグの名称を保存できませんでした');
    return id;
  }

  Future<String?> _namesOf(String id) async {
    final r = await _client.query$EquipmentTagPageRfe(
      Options$Query$EquipmentTagPageRfe(
        variables: Variables$Query$EquipmentTagPageRfe(mstrEquipmentTagId: id),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    return r.parsedData?.mstrEquipmentTagByMstrEquipmentTagId?.names;
  }

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    final name = record.valueOf('name').trim();
    final remarks = record.valueOf('remarks').trim();
    final file = EntityFile.tryParse(record.valueOf('file'));
    final errors = <String, EntityFieldError>{
      if (name.isEmpty) 'name': EntityFieldError.required,
      if (file == null) 'file': EntityFieldError.required,
    };
    if (errors.isNotEmpty) throw EntityValidationException(errors);
    final au = await _auditUser?.call();

    if (record.id.isEmpty) {
      final namesId = await _saveName(
        null,
        name,
        au?.staffId,
        au?.staffHistoryId,
      );
      final stored = await _transfer.ensureUploaded(file!);
      final id = await _link.attach(
        _client,
        fileId: stored.id,
        name: stored.name,
        mediaType: stored.mediaType,
        values: {'names': namesId, 'remarks': remarks.isEmpty ? null : remarks},
        staffId: au?.staffId,
        staffHistoryId: au?.staffHistoryId,
      );
      return EntityRecord(
        id: id,
        values: {...record.values, 'file': stored.toValue()},
      );
    }

    final current = await findById(record.id);
    if (current == null) throw StateError('設備タグが見つかりません');
    if (name != current.valueOf('name')) {
      await _saveName(
        await _namesOf(record.id),
        name,
        au?.staffId,
        au?.staffHistoryId,
      );
    }
    if (remarks != current.valueOf('remarks')) {
      final r = await _client.mutate$EquipmentTagPageEdit(
        Options$Mutation$EquipmentTagPageEdit(
          variables: Variables$Mutation$EquipmentTagPageEdit(
            mstrEquipmentTagId: record.id,
            remarks: remarks,
            updateUserId: au?.staffId,
            updateUserHistoryId: au?.staffHistoryId,
          ),
        ),
      );
      final e = r.exception;
      if (e != null) throw e;
    }
    var value = record.valueOf('file');
    if (EntityFile.tryParse(current.valueOf('file'))?.id != file!.id) {
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
      value = stored.toValue();
    }
    return EntityRecord(
      id: record.id,
      values: {...record.values, 'file': value},
    );
  }

  @override
  Future<void> remove(String id) async {
    final au = await _auditUser?.call();
    final r = await _client.mutate$EquipmentTagPageRemove(
      Options$Mutation$EquipmentTagPageRemove(
        variables: Variables$Mutation$EquipmentTagPageRemove(
          mstrEquipmentTagId: id,
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
