import 'package:data_strategist/lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:graphql/client.dart';
import 'package:localized_values/localized_values.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart'
    show AuditUserSource, SharedFileLink;

import 'staff_history_lookup.dart';

/// 担当者のアイコン(`stafficon`。担当者の子)の取得元(GraphQL 版。書き込みできる)。
///
/// アイコンのバイナリは PocketBase(`app_files`)にだけあり、DB は `trans_file` の行(名前・種類)と、`info_staff_icon`(担当者・
/// 名称・ファイル)だけを持つ。保存の順は、共有ファイルの基準(`quality` の `ComplaintFileRepository`)と同じ:
/// ① 名称(`names`)を共通関数(`shared_appellation_save`)で作る ② 選んだファイルを PocketBase へ上げる
/// ([IEntityFileTransfer.upload]) ③ その ID を `trans_file_id` にして、`trans_file` の行と `info_staff_icon` の行を
/// **1 トランザクション**で登録する([SharedFileLink])。③ が失敗したら DB には何も残らず、PocketBase に参照されないファイルと、
/// 名称(参照されない呼称。マスタ・Info は許容する)が残る。
/// 担当者の履歴の ID(`staff_history_id`。必須)は、その担当者の最新の履歴を引く(`staffHistoryLookup`)。
/// 取り消しは論理削除(`remove = true`)。更新者は [AuditUserSource] で受けて送る。
///
/// パターン: Adapter(生成された読み込み・登録の型と、画面の [EntityRecord] を変換する)
class StaffIconRepository implements IEntityRepository {
  StaffIconRepository(
    this.definition,
    this._client,
    this._languageId,
    this._auditUser,
    this._transfer,
  ) : _historyOf = staffHistoryLookup(_client);

  @override
  final EntityDefinition definition;
  final GraphQLClient _client;
  final Future<String> Function() _languageId;
  final AuditUserSource? _auditUser;
  final IEntityFileTransfer _transfer;
  final Future<String?> Function(String staffId) _historyOf;

  static const _link = SharedFileLink(
    type: 'InfoStaffIcon',
    fields: {
      'staffId': 'UUID',
      'staffHistoryId': 'UUID',
      'names': 'UUID',
      'remarks': 'String',
    },
  );

  EntityRecord _record(Query$StaffIconPageRead$allInfoStaffIcons$nodes n) {
    final f = n.file;
    return EntityRecord(
      id: n.infoStaffIconId,
      parentId: n.staffId,
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

  Future<List<EntityRecord>> _read(String staffId) async {
    final result = await _client.query$StaffIconPageRead(
      Options$Query$StaffIconPageRead(
        variables: Variables$Query$StaffIconPageRead.fromJson({
          'first': 1000,
          'offset': 0,
          'languageCodeId': await _languageId(),
          'staffId': staffId,
        }),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    return [
      for (final n
          in result.parsedData?.allInfoStaffIcons?.nodes ??
              const <Query$StaffIconPageRead$allInfoStaffIcons$nodes?>[])
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
      parentId == null ? const [] : _read(parentId);

  Future<Query$StaffIconPageRfe$infoStaffIconByInfoStaffIconId?> _row(
    String id,
  ) async {
    final r = await _client.query$StaffIconPageRfe(
      Options$Query$StaffIconPageRfe(
        variables: Variables$Query$StaffIconPageRfe(infoStaffIconId: id),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = r.exception;
    if (e != null) throw e;
    final n = r.parsedData?.infoStaffIconByInfoStaffIconId;
    return n == null || n.remove == true ? null : n;
  }

  @override
  Future<EntityRecord?> findById(String id) async {
    final row = await _row(id);
    if (row == null) return null;
    for (final r in await _read(row.staffId)) {
      if (r.id == id) return r;
    }
    return null;
  }

  /// 名称を共通関数で作る・変える。返った呼称の ID を返す。
  Future<String> _saveName(
    String? appellationId,
    String name,
    String? staffId,
    String? historyId,
  ) async {
    final r = await _client.mutate$StaffIconAppellationSavePageCall(
      Options$Mutation$StaffIconAppellationSavePageCall(
        variables: Variables$Mutation$StaffIconAppellationSavePageCall(
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
    if (id == null) throw StateError('アイコンの名称を保存できませんでした');
    return id;
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
      final staffId = record.parentId;
      if (staffId == null || staffId.isEmpty) {
        throw const EntityValidationException({
          EntityValidationException.parentKey: EntityFieldError.required,
        });
      }
      final historyId = await _historyOf(staffId);
      if (historyId == null) throw StateError('担当者の履歴が見つかりません');
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
        values: {
          'staffId': staffId,
          'staffHistoryId': historyId,
          'names': namesId,
          'remarks': remarks.isEmpty ? null : remarks,
        },
        staffId: au?.staffId,
        staffHistoryId: au?.staffHistoryId,
      );
      return EntityRecord(
        id: id,
        parentId: staffId,
        values: {...record.values, 'file': stored.toValue()},
      );
    }

    // 更新: 名称・備考が変わったら更新し、ファイルが変わったら(選び直した)新しいファイルを上げて付け替える
    final row = await _row(record.id);
    final current = await findById(record.id);
    if (row == null || current == null) {
      throw StateError('担当者のアイコンが見つかりません');
    }
    if (name != current.valueOf('name')) {
      await _saveName(row.names, name, au?.staffId, au?.staffHistoryId);
    }
    if (remarks != current.valueOf('remarks')) {
      final r = await _client.mutate$StaffIconPageEdit(
        Options$Mutation$StaffIconPageEdit(
          variables: Variables$Mutation$StaffIconPageEdit(
            infoStaffIconId: record.id,
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
      parentId: row.staffId,
      values: {...record.values, 'file': value},
    );
  }

  @override
  Future<void> remove(String id) async {
    final au = await _auditUser?.call();
    final r = await _client.mutate$StaffIconPageRemove(
      Options$Mutation$StaffIconPageRemove(
        variables: Variables$Mutation$StaffIconPageRemove(
          infoStaffIconId: id,
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
