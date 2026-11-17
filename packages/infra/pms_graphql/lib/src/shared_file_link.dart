import 'package:graphql/client.dart';

/// 共有ファイル(`trans_file`)と、それを持つ行(例: つなぎの表 `trans_complaint_file`・担当者のアイコン `info_staff_icon`)を、
/// **1 トランザクション**で登録する。
///
/// 流れ: ① ファイルのバイナリを PocketBase へ上げる(`app_file_id` = 新しい UUID) → ② その UUID を `trans_file_id` にして、
/// `trans_file` の行と、それを持つ行を 1 回の入れ子の登録で作る。② が失敗したら全部ロールバックされる(DB に何も残らない)。
/// `trans_file` のトリガーは渡された主キーを使う(`issue/20261117_0004.md`)。
///
/// 入れ子は、親(`trans_file`)から子(ファイルを持つ表)へ向けて作る(`<子の型>sUsingTransFileId`)。子から親へ作る向きは、
/// 入れ子の入力に主キーが無い(採番される)ため使えない。生成器(`gql/*.yaml`)が入れ子の登録に対応していないため、
/// GraphQL の文を組み立てて送る(型は使わない)。名前は PostGraphile v4 の規則(型 `TransComplaintFile` →
/// 関係 `transComplaintFilesUsingTransFileId`・子の一覧 `transComplaintFilesByTransFileId`・主キー `transComplaintFileId`)。
///
/// 子が、ファイルのほかに必要とする列(親の ID・名称など)は [fields](列名 → GraphQL の型)で宣言し、登録のとき値を渡す。
///
/// パターン: Template Method(子の型と列の名前だけが違う、同じ手順)
class SharedFileLink {
  /// [type] は子の表の GraphQL の型の名前(例: `TransComplaintFile`)。
  /// [fields] は、子に渡す列(列名 → GraphQL の型。例: `{'transComplaintId': 'UUID', 'remarks': 'String'}`)。
  const SharedFileLink({required this.type, this.fields = const {}});

  final String type;
  final Map<String, String> fields;

  String get _camel => type[0].toLowerCase() + type.substring(1);
  String get _relation => '${_camel}sUsingTransFileId';
  String get _list => '${_camel}sByTransFileId';
  String get _idField => '${_camel}Id';

  static const _fileVars =
      r'$id: UUID!, $name: String!, $type: String, $u: UUID, $h: UUID';
  static const _fileInput =
      r'transFileId: $id, binaryData: "", name: $name, mediaType: $type, updateUserId: $u, updateUserHistoryId: $h';

  String get _extraDeclarations =>
      fields.entries.map((e) => ', \$f_${e.key}: ${e.value}').join();
  String get _extraAssignments =>
      fields.keys.map((k) => '$k: \$f_$k').join(', ');

  /// 新しい子を作る文。変数: `$id`(ファイルの ID)・`$name`・`$type`・`$u`・`$h`・`$f_<列名>`。
  String get createDocument =>
      'mutation($_fileVars$_extraDeclarations) {\n'
      '  createTransFile(input: {transFile: {\n'
      '    $_fileInput,\n'
      '    $_relation: {create: [{${_extraAssignments.isEmpty ? '' : '$_extraAssignments, '}updateUserId: \$u, updateUserHistoryId: \$h}]}\n'
      '  }}) { transFile { transFileId $_list { nodes { $_idField } } } }\n'
      '}';

  /// 既存の子(`$link`)を、新しいファイルへ付け替える文。変数: `$link`・`$id`・`$name`・`$type`・`$u`・`$h`。
  String get replaceDocument =>
      'mutation(\$link: UUID!, $_fileVars) {\n'
      '  createTransFile(input: {transFile: {\n'
      '    $_fileInput,\n'
      '    $_relation: {connectBy${type}Id: [{$_idField: \$link}]}\n'
      '  }}) { transFile { transFileId } }\n'
      '}';

  /// 新しい子(とファイルの行)を作り、子の ID を返す。失敗は [OperationException]。
  /// [values] は [fields] の値(列名 → 値)。
  Future<String> attach(
    GraphQLClient client, {
    required String fileId,
    required String name,
    String mediaType = '',
    Map<String, Object?> values = const {},
    String? staffId,
    String? staffHistoryId,
  }) async {
    final data = await _run(client, createDocument, {
      'id': fileId,
      'name': name,
      'type': mediaType,
      'u': staffId,
      'h': staffHistoryId,
      for (final k in fields.keys) 'f_$k': values[k],
    });
    final nodes =
        data['createTransFile']?['transFile']?[_list]?['nodes'] as List?;
    final id = nodes == null || nodes.isEmpty
        ? null
        : (nodes.first as Map)[_idField] as String?;
    if (id == null) throw StateError('$type を保存できませんでした');
    return id;
  }

  /// 既存の子 [linkId] を、新しいファイル(行を作りながら)へ付け替える。
  Future<void> replace(
    GraphQLClient client, {
    required String linkId,
    required String fileId,
    required String name,
    String mediaType = '',
    String? staffId,
    String? staffHistoryId,
  }) async {
    await _run(client, replaceDocument, {
      'link': linkId,
      'id': fileId,
      'name': name,
      'type': mediaType,
      'u': staffId,
      'h': staffHistoryId,
    });
  }

  Future<Map<String, dynamic>> _run(
    GraphQLClient client,
    String document,
    Map<String, dynamic> variables,
  ) async {
    final r = await client.mutate(
      MutationOptions(document: gql(document), variables: variables),
    );
    final e = r.exception;
    if (e != null) throw e;
    return r.data ?? const {};
  }
}
