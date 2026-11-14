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
import 'package:quality_model/quality_model.dart' as qu;
import 'package:resource_model/resource_model.dart' as rs;
import 'package:work_record_model/work_record_model.dart' as wr;

/// 通信・サーバーの異常。
class ScanClientException implements Exception {
  const ScanClientException(this.message, {this.code});
  final String message;

  /// DB の関数のエラーコード(`VIS03` 数量が足りない、`VIS04` 取り出せない など)。無ければ null。
  final String? code;
  @override
  String toString() => 'ScanClientException: ${code == null ? '' : '[$code] '}$message';
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
    this.stopped = false,
    this.closed = false,
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

  /// 停止中(作業指示は、生産計画または受注明細の停止。発注明細は停止)。登録できない。
  final bool stopped;

  /// 終わっている(作業指示は、生産計画の打ち切りまたは受注明細の全部キャンセル。発注明細は全部キャンセル)。登録できない。
  final bool closed;
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
      final g = e.graphqlErrors.isEmpty ? null : e.graphqlErrors.first;
      final ext = g?.extensions;
      final exception = ext?['exception'];
      final code = ext?['errcode'] ?? (exception is Map ? exception['errcode'] : null);
      throw ScanClientException(g?.message ?? '${e.linkException ?? e}', code: code is String ? code : null);
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
      // 停止・終了の判定は DB のビュー(v_work_plan_registrable)。画面側で判定を持たない
      stopped: (r['registrable'] as Map?)?['stopped'] == true,
      closed: (r['registrable'] as Map?)?['closed'] == true,
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
      // 発注数量は書き換えず、キャンセル数量を引いたものを「受け入れる数量」とする
      quantity: _int(r['quantity']) - _int(r['cancelQuantity']),
      doneQuantity: recs.fold<int>(0, (sum, x) => sum + _int(x['quantity'])),
      stopped: r['stop'] == true,
      closed: _int(r['quantity']) > 0 && _int(r['cancelQuantity']) >= _int(r['quantity']),
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

  // ---- 履歴ID(登録前に最新を読んで送る。DB のトリガーに頼らない) ----

  /// 担当者の最新の履歴ID(revision 最大)を `{staffHistoryId, staffId}` で返す。履歴が無ければ staffId だけ。
  Future<Map<String, dynamic>> _staff(String staffId, {String idKey = 'staffId', String historyKey = 'staffHistoryId'}) async {
    final rows = await _nodes(scan.documentNodeQueryScanStaffHistoryPageRead, 'allHistoryInfoStaffs', {
      'first': 1,
      'orderBy': ['REVISION_DESC'],
      'filter': {
        'infoStaffId': {'equalTo': staffId},
      },
    });
    return {idKey: staffId, if (rows.isNotEmpty) historyKey: rows.first['historyId']};
  }

  /// 場所の最新の履歴ID(revision 最大)を `{locationHistoryId, locationId}` で返す。履歴が無ければ locationId だけ。
  Future<Map<String, dynamic>> _location(String locationId) async {
    final rows = await _nodes(scan.documentNodeQueryScanLocationHistoryPageRead, 'allHistoryMstrLocations', {
      'first': 1,
      'orderBy': ['REVISION_DESC'],
      'filter': {
        'mstrLocationId': {'equalTo': locationId},
      },
    });
    return {'locationId': locationId, if (rows.isNotEmpty) 'locationHistoryId': rows.first['historyId']};
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
  }) async => _create(
    wr.documentNodeMutationWorkRecordPageCreate,
    {
      'transWorkPlanId': workPlanId,
      if (started) 'startAt': _stamp(),
      if (stopped) 'stopAt': _stamp(),
      if (quantity != null) 'qty': '$quantity',
      if (staffId != null) ...await _staff(staffId),
      if (equipmentId != null) 'equipmentId': equipmentId,
      if (remarks != null) 'remarks': remarks,
    },
    'createTransWorkRecord',
    'transWorkRecord',
    'transWorkRecordId',
  );

  /// 棚ビジター(`trans_visiter`)。数量は棚ビジターだけが持つ(+が入庫、-が出庫)。
  /// 出庫・棚卸しの行は [parentVisiterId](取り出したロット)が必須。
  Future<String> createVisiter({
    required String containerId,
    required int quantity,
    String? parentVisiterId,
    bool adjustment = false,
    bool? release,
    String? remarks,
  }) => _create(
    wr.documentNodeMutationVisiterPageCreate,
    {
      'transContainerId': containerId,
      'quantity': '$quantity',
      if (parentVisiterId != null) 'parentTransVisiterId': parentVisiterId,
      if (adjustment) 'adjustment': true,
      if (release != null) 'release': release,
      if (remarks != null) 'remarks': remarks,
    },
    'createTransVisiter',
    'transVisiter',
    'transVisiterId',
  );

  /// 受払実績(`trans_convey`)。いつ・どこで・誰がだけを残す(数量は棚ビジターが持つ)。棚ビジターの1行につき1件。
  Future<String> createConvey({
    required String visiterId,
    String? locationId,
    String? staffId,
    String? remarks,
  }) async => _create(
    wr.documentNodeMutationConveyPageCreate,
    {
      'transVisiterId': visiterId,
      'conveyAt': _stamp(),
      if (locationId != null) ...await _location(locationId),
      if (staffId != null) ...await _staff(staffId),
      if (remarks != null) 'remarks': remarks,
    },
    'createTransConvey',
    'transConvey',
    'transConveyId',
  );

  /// 作業実績と棚ビジターの結び付き(`trans_work_record_visiter`。数量は持たない)。
  Future<String> linkWorkRecordVisiter({
    required String workRecordId,
    required String visiterId,
  }) => _create(
    wr.documentNodeMutationWorkRecordVisiterPageCreate,
    {'transWorkRecordId': workRecordId, 'transVisiterId': visiterId},
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

  /// 受入と棚ビジターの結び付き(`trans_purchase_rec_visiter`。数量は持たない)。
  Future<String> linkPurchaseRecVisiter({
    required String purchaseRecId,
    required String visiterId,
  }) => _create(
    pu.documentNodeMutationPurchaseRecVisiterPageCreate,
    {'transPurchaseRecId': purchaseRecId, 'transVisiterId': visiterId},
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
      locationId: shelf.locationId,
      staffId: staffId,
    );
    await linkWorkRecordVisiter(workRecordId: record, visiterId: visiter);
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
      locationId: shelf.locationId,
      staffId: staffId,
    );
    await linkPurchaseRecVisiter(purchaseRecId: rec, visiterId: visiter);
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
      locationId: shelf.locationId,
      staffId: staffId,
      remarks: item.symbol,
    );
  }

  // ---- 棚ビジターの出庫・移動・棚卸し(DB の関数。1回の呼び出し = 1トランザクション) ----
  // 行と受払実績はDBがまとめて作り、今の数量を超える払出・仮止め・未解除の異常はDBが止める(errcode は [ScanClientException.code])。
  // 担当者 [staffId] を省略すると、DB が認証の担当者を使う。場所は棚の場所。

  /// 払出・出荷・材料投入。ロット [lot] から [quantity] を払い出す。
  /// 製造への投入は [workRecordId](投入先の作業実績)を渡す。返すのは作った-の行の id。
  Future<String> issueLot({
    required String lot,
    required int quantity,
    String? workRecordId,
    String? staffId,
    String? remarks,
  }) => _call(
    wr.documentNodeMutationVisiterIssuePageCall,
    {
      'pSrc': lot,
      'pQty': '$quantity',
      if (workRecordId != null) 'pWorkRecordId': workRecordId,
      if (staffId != null) 'pStaffId': staffId,
      if (remarks != null) 'pRemarks': remarks,
    },
    'visiterIssue',
  );

  /// 移動・分割・隔離。ロット [lot] の [quantity] を棚 [containerId] へ移す。
  /// [hold] が真なら、移動先を仮止めにする。返すのは移動先のロットの id。
  Future<String> moveLot({
    required String lot,
    required int quantity,
    required String containerId,
    bool hold = false,
    String? staffId,
    String? remarks,
  }) => _call(
    wr.documentNodeMutationVisiterMovePageCall,
    {
      'pSrc': lot,
      'pContainerId': containerId,
      'pQty': '$quantity',
      'pHold': hold,
      if (staffId != null) 'pStaffId': staffId,
      if (remarks != null) 'pRemarks': remarks,
    },
    'visiterMove',
  );

  /// 棚卸し。数えた数 [counted] に合わせる調整行を作る。差が無ければ何も作らず null を返す。
  Future<String?> adjustLot({
    required String lot,
    required int counted,
    String? staffId,
    String? remarks,
  }) async {
    final data = await _run(
      wr.documentNodeMutationVisiterAdjustPageCall,
      {
        'pLot': lot,
        'pCounted': '$counted',
        if (staffId != null) 'pStaffId': staffId,
        if (remarks != null) 'pRemarks': remarks,
      },
      mutation: true,
    );
    return ((data['visiterAdjust'] as Map?)?['transVisiter'] as Map?)?['transVisiterId'] as String?;
  }

  /// 棚ビジターの関数を呼び、戻り値の行の id を返す。
  Future<String> _call(DocumentNode document, Map<String, dynamic> variables, String field) async {
    final data = await _run(document, variables, mutation: true);
    final id = ((data[field] as Map?)?['transVisiter'] as Map?)?['transVisiterId'];
    if (id is! String) throw ScanClientException('$field の結果にIDがありません');
    return id;
  }

  // ---- 設備点検 ----

  /// 設備の未実施の点検(今日以前で結果が無い点検予定の明細のうち、予定日が最も古い1件)。無ければ null。
  Future<ScanInspection?> findPendingInspection(String equipmentId, {DateTime? today}) async {
    final limit = (today ?? _now()).toUtc().toIso8601String();
    final schs = await _nodes(scan.documentNodeQueryScanInspectSchPageRead, 'allTransInspectSches', {
      'filter': {
        'equipmentId': {'equalTo': equipmentId},
      },
    });
    final details = <Map<String, dynamic>>[];
    for (final s in schs) {
      details.addAll(
        await _nodes(scan.documentNodeQueryScanInspectSchDetailPageRead, 'allTransInspectSchDetails', {
          'transInspectSchId': s['transInspectSchId'],
          'filter': {
            'scheduledStartDate': {'lessThanOrEqualTo': limit},
          },
        }),
      );
    }
    details.sort((a, b) => '${a['scheduledStartDate']}'.compareTo('${b['scheduledStartDate']}'));
    for (final d in details) {
      final id = d['transInspectSchDetailId'] as String;
      final records = await _nodes(scan.documentNodeQueryScanInspectRecordPageRead, 'allTransInspectRecords', {
        'transInspectSchDetailId': id,
      });
      if (records.isNotEmpty) continue;
      final items = await _nodes(scan.documentNodeQueryScanInspectionPageRead, 'allMstrInspections', {
        'languageCodeId': languageCodeId,
        'filter': {
          'mstrInspectionId': {'equalTo': d['inspectionId']},
        },
      });
      final formulas = await _nodes(
        scan.documentNodeQueryScanInspectionFormulaPageRead,
        'allMstrInspectionFormulas',
        {
          'filter': {
            'mstrInspectionFormulaId': {'equalTo': d['inspectionFormulaId']},
          },
        },
      );
      final f = formulas.isEmpty ? const <String, dynamic>{} : formulas.first;
      return ScanInspection(
        detailId: id,
        scheduledStart: DateTime.tryParse('${d['scheduledStartDate']}'),
        inspectionName: items.isEmpty ? '' : _label(items.first['labels']),
        formulaClass: _int(f['formulaClass']),
        formulaArgs: f['argClass'],
        typeClass: _int(f['typeClass']),
        format: f['formatClass'] as String?,
      );
    }
    return null;
  }

  /// 点検結果(`trans_inspect_record`)の登録。[resultValue] は式ごとの入力値(JSON)。
  Future<String> createInspectRecord({
    required String detailId,
    required bool result,
    String resultState = '',
    Object? resultValue,
    String? staffId,
    String? remarks,
  }) {
    final now = _stamp();
    return _create(
      rs.documentNodeMutationInspectRecordPageCreate,
      {
        'transInspectSchDetailId': detailId,
        'implementStartDate': now,
        'implementStopDate': now,
        'result': result,
        if (resultState.isNotEmpty) 'resultState': resultState,
        if (resultValue != null) 'resultValue': resultValue,
        if (remarks != null) 'remarks': remarks,
      },
      'createTransInspectRecord',
      'transInspectRecord',
      'transInspectRecordId',
    );
  }

  // ---- 異常(不合格) ----

  Future<String> _createLabel(String text) async {
    final label = await _create(
      qu.documentNodeMutationComplaintLabelPageCreate,
      const {},
      'createTransLabel',
      'transLabel',
      'transLabelId',
    );
    await _create(
      qu.documentNodeMutationComplaintLabelValuePageCreate,
      {'transLabelId': label, 'sharedLanguageCodeId': languageCodeId, 'labelValue': text},
      'createTransLabelValue',
      'transLabelValue',
      'transLabelValueId',
    );
    return label;
  }

  Future<String> _createText(String text) async {
    final id = await _create(
      qu.documentNodeMutationComplaintTextPageCreate,
      const {},
      'createTransText',
      'transText',
      'transTextId',
    );
    await _create(
      qu.documentNodeMutationComplaintTextValuePageCreate,
      {
        'transTextId': id,
        'sharedLanguageCodeId': languageCodeId,
        'charCount': text.length,
        'leadText': text.length > 80 ? text.substring(0, 80) : text,
        'textValue': text,
      },
      'createTransTextValue',
      'transTextValue',
      'transTextValueId',
    );
    return id;
  }

  /// 棚ビジターの異常を登録する(表題・詳細 → 異常 → 異常入出庫ビジター)。承認は後で付ける。
  /// 登録した異常の id を返す。[visiterId] の `release` を偽にする(仮止め)のは呼び出し側。
  Future<String> registerComplaint({
    required String visiterId,
    required int quantity,
    required String reporterStaffId,
    String title = '異常報告',
    String detail = '',
  }) async {
    final titles = await _createLabel(title);
    final details = await _createText(detail.isEmpty ? title : detail);
    final complaint = await _create(
      qu.documentNodeMutationComplaintPageCreate,
      {
        'occurentAt': _stamp(),
        'titles': titles,
        'details': details,
        ...await _staff(reporterStaffId, idKey: 'reporterStaffId', historyKey: 'reporterStaffHistoryId'),
      },
      'createTransComplaint',
      'transComplaint',
      'transComplaintId',
    );
    await _create(
      qu.documentNodeMutationComplaintVisiterPageCreate,
      {'transComplaintId': complaint, 'transVisiterId': visiterId, 'quantity': '$quantity'},
      'createTransComplaintVisiter',
      'transComplaintVisiter',
      'transComplaintVisiterId',
    );
    return complaint;
  }

  // ---- 取り出し可否 ----

  /// 棚のロットと、取り出せるか(DB の `v_visiter_issuable`)。
  /// 取り出せる = 入出庫許可が真、かつ解除されていない異常(分割元のものを含む)が無く、数量が正。
  Future<List<ScanVisiter>> listVisiters(String containerId) async {
    final lots = await _nodes(wr.documentNodeQueryVisiterIssuablePageRead, 'allVVisiterIssuables', {
      'filter': {
        'transContainerId': {'equalTo': containerId},
      },
    });
    if (lots.isEmpty) return const [];
    return [
      for (final r in lots)
        ScanVisiter(
          id: r['transVisiterId'] as String,
          containerId: containerId,
          symbol: r['symbol'] as String? ?? '',
          quantity: _int(r['quantity']),
          release: r['release'] as bool? ?? true,
          openComplaintCount: (r['openComplaintCount'] as num?)?.toInt() ?? 0,
          issuable: r['issuable'] as bool? ?? false,
          blockReason: r['blockReason'] as String?,
        ),
    ];
  }
}

/// 点検予定の明細(平らな型)。式の引数は JSON のまま持つ。
class ScanInspection {
  const ScanInspection({
    required this.detailId,
    this.scheduledStart,
    this.inspectionName = '',
    this.formulaClass = 0,
    this.formulaArgs,
    this.typeClass = 0,
    this.format,
  });

  final String detailId;
  final DateTime? scheduledStart;
  final String inspectionName;
  final int formulaClass;
  final Object? formulaArgs;
  final int typeClass;
  final String? format;
}

/// 棚のロット(平らな型)。数量は今の数量(入庫 + 出庫 + 棚卸し)。
class ScanVisiter {
  const ScanVisiter({
    required this.id,
    required this.containerId,
    required this.symbol,
    required this.quantity,
    required this.release,
    required this.openComplaintCount,
    required this.issuable,
    this.blockReason,
  });

  final String id;
  final String containerId;
  final String symbol;
  final int quantity;

  /// 入出庫許可(手動の仮止めが偽)。
  final bool release;

  /// 解除されていない異常の数(分割元のものを含む)。
  final int openComplaintCount;

  /// 取り出せる(DB の判定)。
  final bool issuable;

  /// 取り出せない理由(`hold` / `complaint` / `empty`)。取り出せるときは null。
  final String? blockReason;

  /// 解除されていない異常がある。
  bool get hasOpenComplaint => openComplaintCount > 0;
}
