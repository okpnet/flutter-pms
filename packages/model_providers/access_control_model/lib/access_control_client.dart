/// アクセス管理の窓口(生成モデルを隠す)。`access_control_model.dart`(生成物のバレル)とは別のファイル。
///
/// このアプリ(Product Manufacturing System)の `info_app` は固定の1件で、名前([AccessControlClient.appName])で引ける。
/// アクセスパスの `info_app_id` は画面で選ばせず、[AccessControlClient.appId] で得た id を埋め込む。
/// アクセスパスの登録([AccessControlClient.createAccessPath])は、呼称(名前・読み・略称の辞書と言語別の値)を
/// 1テーブルずつ先に登録してから、アクセスパスを登録する。途中で失敗した場合は、そこまでの登録が残る。
/// 生成された型はここで隠し、平らな型(文字列)で返す。
library;

export 'access_control_records.dart';

import 'package:access_control_model/access_control_model.dart'
    show
        documentNodeMutationAccessPathPageCreate,
        documentNodeMutationAccessPathPageEdit,
        documentNodeMutationAccessPathPageRemove,
        documentNodeMutationDepartmentAccessPathPageCreate,
        documentNodeMutationDepartmentAccessPathPageEdit,
        documentNodeMutationDepartmentAccessPathPageRemove,
        documentNodeMutationStaffAccessPermissionPageCreate,
        documentNodeMutationStaffAccessPermissionPageEdit,
        documentNodeMutationStaffAccessPermissionPageRemove,
        documentNodeQueryAccessPathPageRfe,
        documentNodeQueryDepartmentAccessPathPageRead,
        documentNodeQueryDepartmentAccessPathPageRfe,
        documentNodeQueryStaffAccessPermissionPageRead,
        documentNodeQueryStaffAccessPermissionPageRfe,
        documentNodeQueryStaffEffectiveAccessPathPageRead,
        documentNodeMutationAppellationPageCreate,
        documentNodeMutationDictionaryPageCreate,
        documentNodeMutationDictionaryValuePageCreate,
        documentNodeQueryAccessPathPageRead,
        documentNodeQueryAppPageRead,
        documentNodeQueryLanguageCodePageRead;
import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';

import 'access_control_records.dart';

/// 通信・サーバーの異常、または固定のアプリ・言語が見つからないこと。
class AccessControlClientException implements Exception {
  const AccessControlClientException(this.message);
  final String message;
  @override
  String toString() => 'AccessControlClientException: $message';
}

/// アクセスパスの登録の内容(パスと名前 ja/en)。`apps/pms_app/doc/contents/access_paths.csv` の1行に当たる。
class AccessPathSeed {
  const AccessPathSeed({
    required this.usecasePath,
    required this.nameJa,
    required this.nameEn,
    this.isPublic = false,
  });

  /// ページのパス(`info_access_path.usecase_path`)。
  final String usecasePath;
  final String nameJa;
  final String nameEn;

  /// ログイン前から使えるページ。アクセス権の対象にしないので、登録しない。
  final bool isPublic;

  /// `access_paths.csv`(列: usecase_path,name_ja,name_en,feature,public。先頭は見出し)を読む。
  static List<AccessPathSeed> parseCsv(String csv) {
    final rows = _parse(csv.startsWith('﻿') ? csv.substring(1) : csv);
    if (rows.isEmpty) return const [];
    final header = rows.first;
    int col(String name) {
      final i = header.indexOf(name);
      if (i < 0) throw FormatException('CSV に列がありません: $name');
      return i;
    }

    final path = col('usecase_path');
    final ja = col('name_ja');
    final en = col('name_en');
    final pub = header.indexOf('public');
    return [
      for (final r in rows.skip(1))
        if (r.length > en)
          AccessPathSeed(
            usecasePath: r[path],
            nameJa: r[ja],
            nameEn: r[en],
            isPublic: pub >= 0 && pub < r.length && r[pub].trim() == 'true',
          ),
    ];
  }

  static List<List<String>> _parse(String text) {
    final rows = <List<String>>[];
    var row = <String>[];
    final cell = StringBuffer();
    var quoted = false;
    for (var i = 0; i < text.length; i++) {
      final c = text[i];
      if (quoted) {
        if (c == '"') {
          if (i + 1 < text.length && text[i + 1] == '"') {
            cell.write('"');
            i++;
          } else {
            quoted = false;
          }
        } else {
          cell.write(c);
        }
      } else if (c == '"') {
        quoted = true;
      } else if (c == ',') {
        row.add(cell.toString());
        cell.clear();
      } else if (c == '\n' || c == '\r') {
        if (c == '\r' && i + 1 < text.length && text[i + 1] == '\n') i++;
        row.add(cell.toString());
        cell.clear();
        if (row.any((v) => v.isNotEmpty)) rows.add(row);
        row = <String>[];
      } else {
        cell.write(c);
      }
    }
    if (cell.isNotEmpty || row.isNotEmpty) {
      row.add(cell.toString());
      if (row.any((v) => v.isNotEmpty)) rows.add(row);
    }
    return rows;
  }
}

class AccessControlClient {
  AccessControlClient({required this.client});

  /// このアプリの `info_app.name`。ダミーデータ以外でも変わらない固定の値。
  static const String appName = 'Product Manufacturing System';

  final GraphQLClient client;
  String? _appId;
  String? _jaId;
  String? _enId;

  Future<Map<String, dynamic>> _run(
    DocumentNode document,
    Map<String, dynamic> variables, {
    bool mutation = false,
  }) async {
    final result = mutation
        ? await client.mutate(
            MutationOptions(
              document: document,
              variables: variables,
              fetchPolicy: FetchPolicy.noCache,
            ),
          )
        : await client.query(
            QueryOptions(
              document: document,
              variables: variables,
              fetchPolicy: FetchPolicy.noCache,
            ),
          );
    final e = result.exception;
    if (e != null) {
      final g = e.graphqlErrors.isEmpty ? null : e.graphqlErrors.first;
      throw AccessControlClientException(
        g?.message ?? '${e.linkException ?? e}',
      );
    }
    return result.data ?? const {};
  }

  List<Map> _nodes(Map<String, dynamic> data, String field) => [
    for (final n in (data[field] as Map?)?['nodes'] as List? ?? const [])
      if (n is Map) n,
  ];

  /// このアプリの `info_app_id`。初回に名前で引き、以降は覚えた値を返す。見つからなければ例外。
  Future<String> appId() async {
    final cached = _appId;
    if (cached != null) return cached;
    final data = await _run(documentNodeQueryAppPageRead, const {
      'first': 1,
      'filter': {
        'name': {'equalTo': appName},
      },
    });
    final nodes = _nodes(data, 'allInfoApps');
    final id = nodes.isEmpty ? null : nodes.first['infoAppId'];
    if (id is! String) {
      throw const AccessControlClientException('アプリ($appName)が登録されていません');
    }
    return _appId = id;
  }

  Future<void> _loadLanguages() async {
    if (_jaId != null && _enId != null) return;
    final data = await _run(documentNodeQueryLanguageCodePageRead, const {
      'first': 50,
    });
    for (final n in _nodes(data, 'allSharedLanguageCodes')) {
      if (n['code'] == 'ja') _jaId = n['sharedLanguageCodeId'] as String?;
      if (n['code'] == 'en') _enId = n['sharedLanguageCodeId'] as String?;
    }
    if (_jaId == null || _enId == null) {
      throw const AccessControlClientException('言語コード(ja・en)が登録されていません');
    }
  }

  /// `usecase_path` で登録済みのアクセスパスの id。無ければ null。
  Future<String?> findAccessPathId(String usecasePath) async {
    await _loadLanguages();
    final data = await _run(documentNodeQueryAccessPathPageRead, {
      'first': 1,
      'languageCodeId': _jaId,
      'filter': {
        'usecasePath': {'equalTo': usecasePath},
      },
    });
    final nodes = _nodes(data, 'allInfoAccessPaths');
    return nodes.isEmpty ? null : nodes.first['infoAccessPathId'] as String?;
  }

  Future<String> _create(
    DocumentNode document,
    Map<String, dynamic> variables,
    String field,
    String payload,
    String idField,
  ) async {
    final data = await _run(document, variables, mutation: true);
    final id = ((data[field] as Map?)?[payload] as Map?)?[idField];
    if (id is! String) {
      throw AccessControlClientException('$field の応答に $idField がありません');
    }
    return id;
  }

  /// 辞書(1つ)と、言語別の値を登録し、辞書の id を返す。
  Future<String> _createDictionary({String? ja, String? en}) async {
    final id = await _create(
      documentNodeMutationDictionaryPageCreate,
      const {},
      'createSharedDictionary',
      'sharedDictionary',
      'sharedDictionaryId',
    );
    for (final (lang, value) in [(_jaId, ja ?? ''), (_enId, en ?? '')]) {
      await _create(
        documentNodeMutationDictionaryValuePageCreate,
        {
          'sharedLanguageCodeId': lang,
          'sharedDictionaryId': id,
          'dictionaryValue': value,
        },
        'createSharedDictionaryValue',
        'sharedDictionaryValue',
        'sharedDictionaryValueId',
      );
    }
    return id;
  }

  /// アクセスパスを登録し、その `info_access_path_id` を返す。
  /// 名前(ja・en)の呼称を作ってから登録する。読みと略称は空の値で作る(あとから編集で入れる)。
  /// アプリは固定([appId])なので、引数に取らない。
  Future<String> createAccessPath({
    required String usecasePath,
    required String nameJa,
    required String nameEn,
    String? remarks,
  }) async {
    final app = await appId();
    await _loadLanguages();
    final name = await _createDictionary(ja: nameJa, en: nameEn);
    final pronunciation = await _createDictionary();
    final nickname = await _createDictionary();
    final names = await _create(
      documentNodeMutationAppellationPageCreate,
      {
        'sharedDictionaryNameId': name,
        'sharedDictionaryPronunciationId': pronunciation,
        'sharedDictionaryNicknameId': nickname,
      },
      'createSharedAppellation',
      'sharedAppellation',
      'sharedAppellationsId',
    );
    return _create(
      documentNodeMutationAccessPathPageCreate,
      {
        'infoAppId': app,
        'names': names,
        'usecasePath': usecasePath,
        'remarks': remarks,
      },
      'createInfoAccessPath',
      'infoAccessPath',
      'infoAccessPathId',
    );
  }

  // ---- 一覧・取得・保存・削除(画面の取得元 IEntityRepository が使う) ----

  static String _s(Object? v) => v is String ? v : '';
  static bool _b(Object? v) => v == true;

  /// 辞書(`ja`・`en` の別名で言語別の値を持つ)から、指定の言語の値を取り出す。
  static String _dictValue(Object? dict, String lang) {
    final nodes =
        ((dict as Map?)?[lang] as Map?)?['nodes'] as List? ?? const [];
    return nodes.isEmpty ? '' : _s((nodes.first as Map)['dictionaryValue']);
  }

  /// 読み込み(1言語だけ引く)の名前。`labels.sharedDictionaryBySharedDictionaryNameId.value.nodes[0]`。
  static String _readName(Object? labels) {
    final dict = (labels as Map?)?['sharedDictionaryBySharedDictionaryNameId'];
    return _dictValue(dict, 'value');
  }

  /// アクセスパスの一覧(名前は ja)。削除済みは除く。
  Future<List<AccessPathRecord>> listAccessPaths({
    int first = 100,
    int offset = 0,
  }) async {
    await _loadLanguages();
    final data = await _run(documentNodeQueryAccessPathPageRead, {
      'first': first,
      'offset': offset,
      'languageCodeId': _jaId,
    });
    return [
      for (final n in _nodes(data, 'allInfoAccessPaths'))
        AccessPathRecord(
          id: _s(n['infoAccessPathId']),
          nameJa: _readName(n['labels']),
          usecasePath: _s(n['usecasePath']),
          symbol: _s(n['symbol']),
          remarks: _s(n['remarks']),
        ),
    ];
  }

  /// アクセスパス1件(名前は ja・en)。無ければ null。
  Future<AccessPathRecord?> getAccessPath(String id) async {
    await _loadLanguages();
    final data = await _run(documentNodeQueryAccessPathPageRfe, {
      'infoAccessPathId': id,
      'jaLanguageCodeId': _jaId,
      'enLanguageCodeId': _enId,
    });
    final n = data['infoAccessPathByInfoAccessPathId'] as Map?;
    if (n == null) return null;
    final name =
        (n['labels'] as Map?)?['sharedDictionaryBySharedDictionaryNameId'];
    // symbol は DB のトリガーが付ける(読み取りだけ)。一覧の読み込みで引く
    final symbolData = await _run(documentNodeQueryAccessPathPageRead, {
      'first': 1,
      'languageCodeId': _jaId,
      'filter': {
        'infoAccessPathId': {'equalTo': id},
      },
    });
    final symbolNodes = _nodes(symbolData, 'allInfoAccessPaths');
    return AccessPathRecord(
      id: id,
      nameJa: _dictValue(name, 'ja'),
      nameEn: _dictValue(name, 'en'),
      usecasePath: _s(n['usecasePath']),
      symbol: symbolNodes.isEmpty ? '' : _s(symbolNodes.first['symbol']),
      remarks: _s(n['remarks']),
    );
  }

  /// アクセスパスを保存し、その id を返す。id が空なら登録([createAccessPath])、あれば更新。
  /// symbol は DB のトリガーが自動で付けるので、登録でも更新でも送らない。読みと略称は、いまの値を保ったまま名前だけ直す。
  Future<String> saveAccessPath(AccessPathRecord r) async {
    if (r.id.isEmpty) {
      return createAccessPath(
        usecasePath: r.usecasePath,
        nameJa: r.nameJa,
        nameEn: r.nameEn,
        remarks: r.remarks.isEmpty ? null : r.remarks,
      );
    }
    await _loadLanguages();
    final data = await _run(documentNodeQueryAccessPathPageRfe, {
      'infoAccessPathId': r.id,
      'jaLanguageCodeId': _jaId,
      'enLanguageCodeId': _enId,
    });
    final n = data['infoAccessPathByInfoAccessPathId'] as Map?;
    if (n == null) throw AccessControlClientException('アクセスパスがありません: ${r.id}');
    final labels = n['labels'] as Map?;
    final name = labels?['sharedDictionaryBySharedDictionaryNameId'] as Map?;
    final pron =
        labels?['sharedDictionaryBySharedDictionaryPronunciationId'] as Map?;
    final nick =
        labels?['sharedDictionaryBySharedDictionaryNicknameId'] as Map?;
    await _run(documentNodeMutationAccessPathPageEdit, {
      'infoAccessPathId': r.id,
      'sharedAppellationsId': labels?['sharedAppellationsId'],
      'nameSharedDictionaryId': name?['sharedDictionaryId'],
      'jaLanguageCodeId': _jaId,
      'enLanguageCodeId': _enId,
      'nameJa': r.nameJa,
      'nameEn': r.nameEn,
      'pronunciationSharedDictionaryId': pron?['sharedDictionaryId'],
      'pronunciationJa': _dictValue(pron, 'ja'),
      'pronunciationEn': _dictValue(pron, 'en'),
      'nicknameSharedDictionaryId': nick?['sharedDictionaryId'],
      'nicknameJa': _dictValue(nick, 'ja'),
      'nicknameEn': _dictValue(nick, 'en'),
      'usecasePath': r.usecasePath,
      'remarks': r.remarks.isEmpty ? null : r.remarks,
    }, mutation: true);
    return r.id;
  }

  /// アクセスパスの論理削除(`remove = true`)。[restore] で元に戻す。
  Future<void> removeAccessPath(String id, {bool restore = false}) => _run(
    documentNodeMutationAccessPathPageRemove,
    {'infoAccessPathId': id, 'remove': !restore},
    mutation: true,
  );

  // ---- 部署のアクセスパス ----

  Future<List<DepartmentAccessPathRecord>> listDepartmentAccessPaths({
    String? departmentId,
    int first = 100,
    int offset = 0,
  }) async {
    await _loadLanguages();
    final data = await _run(documentNodeQueryDepartmentAccessPathPageRead, {
      'first': first,
      'offset': offset,
      'languageCodeId': _jaId,
      if (departmentId != null)
        'filter': {
          'infoDepartmentId': {'equalTo': departmentId},
        },
    });
    return [
      for (final n in _nodes(data, 'allInfoDepartmentAccessPaths'))
        DepartmentAccessPathRecord(
          id: _s(n['infoDepartmentAccessPathId']),
          departmentId: _s(n['infoDepartmentId']),
          accessPathId: _s(n['infoAccessPathId']),
          write: _b(n['write']),
          remarks: _s(n['remarks']),
        ),
    ];
  }

  Future<DepartmentAccessPathRecord?> getDepartmentAccessPath(String id) async {
    final data = await _run(documentNodeQueryDepartmentAccessPathPageRfe, {
      'infoDepartmentAccessPathId': id,
    });
    final n =
        data['infoDepartmentAccessPathByInfoDepartmentAccessPathId'] as Map?;
    if (n == null) return null;
    return DepartmentAccessPathRecord(
      id: id,
      departmentId: _s(n['infoDepartmentId']),
      accessPathId: _s(n['infoAccessPathId']),
      write: _b(n['write']),
      remarks: _s(n['remarks']),
    );
  }

  /// 保存して id を返す。id が空なら登録、あれば更新。
  Future<String> saveDepartmentAccessPath(DepartmentAccessPathRecord r) async {
    final remarks = r.remarks.isEmpty ? null : r.remarks;
    if (r.id.isEmpty) {
      return _create(
        documentNodeMutationDepartmentAccessPathPageCreate,
        {
          'infoDepartmentId': r.departmentId,
          'infoAccessPathId': r.accessPathId,
          'write': r.write,
          'remarks': remarks,
        },
        'createInfoDepartmentAccessPath',
        'infoDepartmentAccessPath',
        'infoDepartmentAccessPathId',
      );
    }
    await _run(documentNodeMutationDepartmentAccessPathPageEdit, {
      'infoDepartmentAccessPathId': r.id,
      'infoDepartmentId': r.departmentId,
      'infoAccessPathId': r.accessPathId,
      'write': r.write,
      'remarks': remarks,
    }, mutation: true);
    return r.id;
  }

  Future<void> removeDepartmentAccessPath(String id, {bool restore = false}) =>
      _run(documentNodeMutationDepartmentAccessPathPageRemove, {
        'infoDepartmentAccessPathId': id,
        'remove': !restore,
      }, mutation: true);

  // ---- 担当者のアクセスパス許可 ----

  Future<List<StaffAccessPermissionRecord>> listStaffAccessPermissions({
    String? staffId,
    int first = 100,
    int offset = 0,
  }) async {
    await _loadLanguages();
    final data = await _run(documentNodeQueryStaffAccessPermissionPageRead, {
      'first': first,
      'offset': offset,
      'languageCodeId': _jaId,
      if (staffId != null)
        'filter': {
          'infoStaffId': {'equalTo': staffId},
        },
    });
    return [
      for (final n in _nodes(data, 'allInfoStaffAccessPermissions'))
        StaffAccessPermissionRecord(
          id: _s(n['infoStaffAccessPermissionId']),
          staffId: _s(n['infoStaffId']),
          accessPathId: _s(n['infoAccessPathId']),
          write: _b(n['write']),
          remarks: _s(n['remarks']),
        ),
    ];
  }

  Future<StaffAccessPermissionRecord?> getStaffAccessPermission(
    String id,
  ) async {
    final data = await _run(documentNodeQueryStaffAccessPermissionPageRfe, {
      'infoStaffAccessPermissionId': id,
    });
    final n =
        data['infoStaffAccessPermissionByInfoStaffAccessPermissionId'] as Map?;
    if (n == null) return null;
    return StaffAccessPermissionRecord(
      id: id,
      staffId: _s(n['infoStaffId']),
      accessPathId: _s(n['infoAccessPathId']),
      write: _b(n['write']),
      remarks: _s(n['remarks']),
    );
  }

  Future<String> saveStaffAccessPermission(
    StaffAccessPermissionRecord r,
  ) async {
    final remarks = r.remarks.isEmpty ? null : r.remarks;
    if (r.id.isEmpty) {
      return _create(
        documentNodeMutationStaffAccessPermissionPageCreate,
        {
          'infoStaffId': r.staffId,
          'infoAccessPathId': r.accessPathId,
          'write': r.write,
          'remarks': remarks,
        },
        'createInfoStaffAccessPermission',
        'infoStaffAccessPermission',
        'infoStaffAccessPermissionId',
      );
    }
    await _run(documentNodeMutationStaffAccessPermissionPageEdit, {
      'infoStaffAccessPermissionId': r.id,
      'infoStaffId': r.staffId,
      'infoAccessPathId': r.accessPathId,
      'write': r.write,
      'remarks': remarks,
    }, mutation: true);
    return r.id;
  }

  Future<void> removeStaffAccessPermission(String id, {bool restore = false}) =>
      _run(documentNodeMutationStaffAccessPermissionPageRemove, {
        'infoStaffAccessPermissionId': id,
        'remove': !restore,
      }, mutation: true);

  // ---- 担当者の実効アクセスパス(読み取り専用) ----

  /// 担当者の実効アクセスパス。[staffId] を指定するとその担当者だけ。ログイン後の権限確認に使う。
  Future<List<EffectiveAccessPathRecord>> listEffectiveAccessPaths({
    String? staffId,
    int first = 1000,
    int offset = 0,
  }) async {
    final data = await _run(documentNodeQueryStaffEffectiveAccessPathPageRead, {
      'first': first,
      'offset': offset,
      if (staffId != null)
        'filter': {
          'infoStaffId': {'equalTo': staffId},
        },
    });
    return [
      for (final n in _nodes(data, 'allVStaffEffectiveAccessPaths'))
        EffectiveAccessPathRecord(
          staffId: _s(n['infoStaffId']),
          accessPathId: _s(n['infoAccessPathId']),
          usecasePath: _s(n['usecasePath']),
          canWrite: _b(n['canWrite']),
          fromDepartment: _b(n['fromDepartment']),
          fromStaff: _b(n['fromStaff']),
        ),
    ];
  }

  /// 登録済みでない(公開でない)ページのアクセスパスを登録し、登録した `usecase_path` の一覧を返す。
  /// 登録済みかどうかは `usecase_path` で判定する(再実行しても重複しない)。
  Future<List<String>> registerMissingAccessPaths(
    Iterable<AccessPathSeed> seeds,
  ) async {
    final created = <String>[];
    for (final s in seeds) {
      if (s.isPublic) continue;
      if (await findAccessPathId(s.usecasePath) != null) continue;
      await createAccessPath(
        usecasePath: s.usecasePath,
        nameJa: s.nameJa,
        nameEn: s.nameEn,
      );
      created.add(s.usecasePath);
    }
    return created;
  }
}
