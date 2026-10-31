/// バーコード実績登録の窓口(生成モデルを隠す)。`barcode_entry_model.dart`(生成物のバレル)とは別のファイル。
///
/// 読み込み(symbol で対象を引く)はこのパッケージの生成モデル、登録(作業実績・入庫/払出・受入)は
/// `work_record_model`・`purchasing_model` の生成モデル(`~PageCreate`)を使う。
/// 生成された型はここで平らな型([ScanFound] ほか)に変換し、パッケージの外へ出さない。
/// 登録は1テーブルずつの部品([ScanClient.createWorkRecord] など)と、組み合わせ([ScanClient.putWork] など)を持つ。
/// 複数テーブルの登録はクライアントで順に呼ぶ(途中で失敗した場合は、そこまでの登録が残る)。
library;

import 'package:barcode_entry_model/barcode_entry_model.dart' as scan;
import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:purchasing_model/purchasing_model.dart' as pu;
import 'package:work_record_model/work_record_model.dart' as wr;

/// 通信・サーバーの異常。
class ScanClientException implements Exception {
  const ScanClientException(this.message);
  final String message;
  @override
  String toString() => 'ScanClientException: $message';
}

/// symbol で引いた対象の種類。
enum ScanFoundKind { workPlan, container, purchaseDetail, item, equipment }

/// symbol で引いた対象(平らな型)。使わない項目は null。
class ScanFound {
  const ScanFound({
    required this.kind,
    required this.id,
    required this.symbol,
    this.name = '',
    this.itemName = '',
    this.quantity = 0,
    this.doneQuantity = 0,
    this.started = false,
    this.locationId,
  });

  final ScanFoundKind kind;
  final String id;
  final String symbol;

  /// 名称(作業指示は工程名、棚・品目・設備は名称)。
  final String name;

  /// 品目名(作業指示・購入品)。
  final String itemName;

  /// 指示数量・発注数量。
  final int quantity;

  /// 完了数量・受入済み数量。
  final int doneQuantity;

  /// 作業が開始されているか(作業実績がある)。
  final bool started;

  /// 棚の場所の id。
  final String? locationId;
}

class ScanClient {
  ScanClient({required this.client, required this.languageCodeId, DateTime Function()? now})
    : _now = now ?? DateTime.now;

  final GraphQLClient client;

  /// 名称の言語(`shared_language_code` の id)。
  final String languageCodeId;
  final DateTime Function() _now;

  // ---- 通信 ----

  Future<Map<String, dynamic>> _run(
    DocumentNode document,
    Map<String, dynamic> variables, {
    bool mutation = false,
  }) async {
    final QueryResult result = mutation
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
      throw ScanClientException(
        e.graphqlErrors.isNotEmpty ? e.graphqlErrors.first.message : '${e.linkException ?? e}',
      );
    }
    return result.data ?? const {};
  }

  Future<List<Map<String, dynamic>>> _nodes(
    DocumentNode document,
    String field,
    Map<String, dynamic> variables,
  ) async {
    final data = await _run(document, {'first': 100, ...variables});
    final nodes = (data[field] as Map?)?['nodes'] as List? ?? const [];
    return [
      for (final n in nodes)
        if (n is Map) Map<String, dynamic>.from(n),
    ];
  }

  Map<String, dynamic> _eq(String symbol) => {
    'filter': {
      'symbol': {'equalTo': symbol},
    },
  };

  /// 名称(呼称の `name`)。`labels.sharedDictionaryBySharedDictionaryNameId.value.nodes[0].dictionaryValue`。
  String _label(Object? labels) {
    final dict = (labels as Map?)?['sharedDictionaryBySharedDictionaryNameId'] as Map?;
    final nodes = (dict?['value'] as Map?)?['nodes'] as List?;
    return (nodes != null && nodes.isNotEmpty ? (nodes.first as Map)['dictionaryValue'] : null)
            ?.toString() ??
        '';
  }

  int _int(Object? v) => v == null ? 0 : (num.tryParse('$v') ?? 0).round();

  // ---- 読み込み(symbol) ----

  /// symbol(設備はコードでも)から対象を引く。作業指示・棚・発注明細・品目・設備の順に探す。
  Future<ScanFound?> find(String symbol) async =>
      await findWorkPlan(symbol) ??
      await findContainer(symbol) ??
      await findPurchaseDetail(symbol) ??
      await findItem(symbol) ??
      await findEquipment(symbol);

  Future<ScanFound?> findWorkPlan(String symbol) async {
    final rows = await _nodes(scan.documentNodeQueryScanWorkPlanPageRead, 'allTransWorkPlans', {
      'languageCodeId': languageCodeId,
      ..._eq(symbol),
    });
    if (rows.isEmpty) return null;
    final r = rows.first;
    final id = r['transWorkPlanId'] as String;
    final plan = r['operationsPlan'] as Map?;
    final resource = plan?['resourcePlan'] as Map?;
    final records = await _nodes(scan.documentNodeQueryScanWorkRecordPageRead, 'allTransWorkRecords', {
      'transWorkPlanId': id,
    });
    final done = records.fold<int>(0, (sum, x) => sum + _int(x['qty']));
    return ScanFound(
      kind: ScanFoundKind.workPlan,
      id: id,
      symbol: r['symbol'] as String? ?? symbol,
      name: _label((r['task'] as Map?)?['labels']),
      itemName: await _itemName(resource?['itemId'] as String?),
      quantity: _int(plan?['quantity']),
      doneQuantity: done,
      started: records.isNotEmpty,
    );
  }

  Future<ScanFound?> findContainer(String symbol) async {
    final rows = await _nodes(scan.documentNodeQueryScanContainerPageRead, 'allTransContainers', {
      'languageCodeId': languageCodeId,
      ..._eq(symbol),
    });
    if (rows.isEmpty) return null;
    final r = rows.first;
    return ScanFound(
      kind: ScanFoundKind.container,
      id: r['transContainerId'] as String,
      symbol: r['symbol'] as String? ?? symbol,
      name: _label(r['labels']),
      locationId: r['mstrLocationId'] as String?,
    );
  }

  Future<ScanFound?> findPurchaseDetail(String symbol) async {
    final rows = await _nodes(
      scan.documentNodeQueryScanPurchaseDetailPageRead,
      'allTransPurchaseDetails',
      _eq(symbol),
    );
    if (rows.isEmpty) return null;
    final r = rows.first;
    final id = r['transPurchaseDetailId'] as String;
    final recs = await _nodes(scan.documentNodeQueryScanPurchaseRecPageRead, 'allTransPurchaseRecs', {
      'transPurchaseDetailId': id,
    });
    return ScanFound(
      kind: ScanFoundKind.purchaseDetail,
      id: id,
      symbol: r['symbol'] as String? ?? symbol,
      itemName: await _itemName(r['itemId'] as String?),
      quantity: _int(r['quantity']),
      doneQuantity: recs.fold<int>(0, (sum, x) => sum + _int(x['quantity'])),
    );
  }

  Future<ScanFound?> findItem(String symbol) async {
    final rows = await _nodes(scan.documentNodeQueryScanItemPageRead, 'allMstrItems', {
      'languageCodeId': languageCodeId,
      ..._eq(symbol),
    });
    if (rows.isEmpty) return null;
    final r = rows.first;
    return ScanFound(
      kind: ScanFoundKind.item,
      id: r['mstrItemId'] as String,
      symbol: r['symbol'] as String? ?? symbol,
      name: _label(r['labels']),
    );
  }

  Future<ScanFound?> findEquipment(String symbolOrCode) async {
    var rows = await _nodes(scan.documentNodeQueryScanEquipmentPageRead, 'allMstrEquipments', {
      ..._eq(symbolOrCode),
    });
    if (rows.isEmpty) {
      rows = await _nodes(scan.documentNodeQueryScanEquipmentPageRead, 'allMstrEquipments', {
        'filter': {
          'code': {'equalTo': symbolOrCode},
        },
      });
    }
    if (rows.isEmpty) return null;
    final r = rows.first;
    return ScanFound(
      kind: ScanFoundKind.equipment,
      id: r['mstrEquipmentId'] as String,
      symbol: r['code'] as String? ?? symbolOrCode,
      name: await _itemName(r['mstrItemId'] as String?),
    );
  }

  Future<String> _itemName(String? itemId) async {
    if (itemId == null) return '';
    final rows = await _nodes(scan.documentNodeQueryScanItemPageRead, 'allMstrItems', {
      'languageCodeId': languageCodeId,
      'filter': {
        'mstrItemId': {'equalTo': itemId},
      },
    });
    return rows.isEmpty ? '' : _label(rows.first['labels']);
  }

  // ---- 登録(1テーブルずつ) ----

  String _stamp() => _now().toUtc().toIso8601String();

  Future<String> _create(
    DocumentNode document,
    Map<String, dynamic> variables,
    String field,
    String row,
    String idField,
  ) async {
    final data = await _run(document, variables, mutation: true);
    final id = ((data[field] as Map?)?[row] as Map?)?[idField];
    if (id is! String) throw ScanClientException('$field の登録結果にIDがありません');
    return id;
  }

  /// 作業実績(`trans_work_record`)。
  Future<String> createWorkRecord({
    required String workPlanId,
    int? quantity,
    bool started = false,
    bool stopped = false,
    String? staffId,
    String? equipmentId,
    String? remarks,
  }) => _create(
    wr.documentNodeMutationWorkRecordPageCreate,
    {
      'transWorkPlanId': workPlanId,
      if (started) 'startAt': _stamp(),
      if (stopped) 'stopAt': _stamp(),
      if (quantity != null) 'qty': '$quantity',
      if (staffId != null) 'staffId': staffId,
      if (equipmentId != null) 'equipmentId': equipmentId,
      if (remarks != null) 'remarks': remarks,
    },
    'createTransWorkRecord',
    'transWorkRecord',
    'transWorkRecordId',
  );

  /// 棚ビジター(`trans_visiter`)。
  Future<String> createVisiter({
    required String containerId,
    required int quantity,
    String? remarks,
  }) => _create(
    wr.documentNodeMutationVisiterPageCreate,
    {'transContainerId': containerId, 'quantity': '$quantity', if (remarks != null) 'remarks': remarks},
    'createTransVisiter',
    'transVisiter',
    'transVisiterId',
  );

  /// 棚への入庫/払出(`trans_convey`)。[receive] が入庫。
  Future<String> createConvey({
    required String visiterId,
    required bool receive,
    required int quantity,
    String? locationId,
    String? staffId,
    String? remarks,
  }) => _create(
    wr.documentNodeMutationConveyPageCreate,
    {
      'transVisiterId': visiterId,
      'receive': receive,
      'conveyAt': _stamp(),
      'quantity': '$quantity',
      if (locationId != null) 'locationId': locationId,
      if (staffId != null) 'staffId': staffId,
      if (remarks != null) 'remarks': remarks,
    },
    'createTransConvey',
    'transConvey',
    'transConveyId',
  );

  /// 作業実績と棚ビジターの結び付き(`trans_work_record_visiter`)。
  Future<String> linkWorkRecordVisiter({
    required String workRecordId,
    required String visiterId,
    required int quantity,
  }) => _create(
    wr.documentNodeMutationWorkRecordVisiterPageCreate,
    {'transWorkRecordId': workRecordId, 'transVisiterId': visiterId, 'quantity': '$quantity'},
    'createTransWorkRecordVisiter',
    'transWorkRecordVisiter',
    'transWorkRecordVisiterId',
  );

  /// 購入品受入(`trans_purchase_rec`)。
  Future<String> createPurchaseRec({
    required String purchaseDetailId,
    required int quantity,
    String? remarks,
  }) => _create(
    pu.documentNodeMutationPurchaseRecPageCreate,
    {
      'transPurchaseDetailId': purchaseDetailId,
      'receiveAt': _stamp(),
      'quantity': '$quantity',
      if (remarks != null) 'remarks': remarks,
    },
    'createTransPurchaseRec',
    'transPurchaseRec',
    'transPurchaseRecId',
  );

  /// 受入と棚ビジターの結び付き(`trans_purchase_rec_visiter`)。
  Future<String> linkPurchaseRecVisiter({
    required String purchaseRecId,
    required String visiterId,
    required int quantity,
  }) => _create(
    pu.documentNodeMutationPurchaseRecVisiterPageCreate,
    {'transPurchaseRecId': purchaseRecId, 'transVisiterId': visiterId, 'quantity': '$quantity'},
    'createTransPurchaseRecVisiter',
    'transPurchaseRecVisiter',
    'transPurchaseRecVisiterId',
  );

  // ---- 登録(組み合わせ) ----

  /// 作業の開始(作業実績だけ)。棚出庫(払出)は、ビジターに品目の列が無く材料の消費量と結び付けられないため行わない。
  Future<String> startWork({required String workPlanId, String? staffId}) =>
      createWorkRecord(workPlanId: workPlanId, started: true, staffId: staffId);

  /// 作業の完了数量を棚へ入庫する(作業実績 + ビジター + 入庫 + 結び付け)。
  /// 不合格は理由を備考に残す(異常(`trans_complaint`)の登録は、表題・詳細の文書が必要なため別に行う)。
  Future<void> putWork({
    required String workPlanId,
    required int quantity,
    required ScanFound shelf,
    String? staffId,
    String? rejectNote,
  }) async {
    final record = await createWorkRecord(
      workPlanId: workPlanId,
      quantity: quantity,
      stopped: true,
      staffId: staffId,
      remarks: rejectNote,
    );
    final visiter = await createVisiter(containerId: shelf.id, quantity: quantity, remarks: rejectNote);
    await createConvey(
      visiterId: visiter,
      receive: true,
      quantity: quantity,
      locationId: shelf.locationId,
      staffId: staffId,
    );
    await linkWorkRecordVisiter(workRecordId: record, visiterId: visiter, quantity: quantity);
  }

  /// 購入品の受入数量を棚へ入庫する(受入 + ビジター + 入庫 + 結び付け)。
  Future<void> putPurchase({
    required String purchaseDetailId,
    required int quantity,
    required ScanFound shelf,
    String? staffId,
    String? rejectNote,
  }) async {
    final rec = await createPurchaseRec(
      purchaseDetailId: purchaseDetailId,
      quantity: quantity,
      remarks: rejectNote,
    );
    final visiter = await createVisiter(containerId: shelf.id, quantity: quantity, remarks: rejectNote);
    await createConvey(
      visiterId: visiter,
      receive: true,
      quantity: quantity,
      locationId: shelf.locationId,
      staffId: staffId,
    );
    await linkPurchaseRecVisiter(purchaseRecId: rec, visiterId: visiter, quantity: quantity);
  }

  /// 棚移動(製品/購入品を棚へ入れる)。ビジターに品目の列が無いため、品目の symbol を備考に残す。
  Future<void> putItem({
    required ScanFound item,
    required int quantity,
    required ScanFound shelf,
    String? staffId,
  }) async {
    final visiter = await createVisiter(
      containerId: shelf.id,
      quantity: quantity,
      remarks: item.symbol,
    );
    await createConvey(
      visiterId: visiter,
      receive: true,
      quantity: quantity,
      locationId: shelf.locationId,
      staffId: staffId,
      remarks: item.symbol,
    );
  }
}
