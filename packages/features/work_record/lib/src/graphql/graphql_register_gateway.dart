import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;
import 'package:work_record_model/work_record_model.dart';

import '../register/register_gateway.dart';
import '../register/register_models.dart';

/// 実績登録の取得元(GraphQL 版)。
///
/// 読み込み: 生産計画(`trans_operations_plan`)・工程計画明細(`trans_work_plan`。残り・実施中・登録できるかは DB のビュー
/// `v_register_target` の列で、画面では計算しない)・作業実績・取り出した数量(作業実績につないだ払出の − の行)・不適合の数量(工程異常)。
/// 登録: DB 関数(1 回の呼び出し = 1 トランザクション)。開始 = `work_record_start`(実績の登録 + コンテナのロットからの払出)、
/// 終了 = `inspection_register`(実績の終了 + 合格の入庫 + 不合格の異常と入庫 + 差の返却)。
///
/// 制限(`issue/20261120_0001.md`):
/// 1. コンテナの候補は、取り出せるロット(`v_visiter_issuable`)から作る。最初の工程は「この生産計画の品目とは別の品目(材料)のロット」、
///    2 工程目以降は「前の工程の作業実績が入庫したロット」。同じ注文の材料への絞り込み・引当の優先・入れ子(分割・移動したロット)の
///    たどりは未対応。コンテナの在庫数は、取り出せるロットのうち最大の 1 ロットの数量(1 回の開始は 1 ロットから払い出すため)。
/// 2. 引継ぎ(`ResultRow.handover`)は DB に列が無いため、常に false。
/// 3. 理由(不合格・意図的な差)は、決定(2026-11-20)により自由な文(マスタを足さない)。選択肢の文を、そのまま理由として送る。
///
/// 生成された読み込みの文書([documentNodeQuery…])を実行し、結果は JSON のまま読む(深い入れ子の型を、機能の外へ出さない)。
///
/// パターン: Adapter(生成されたモデルを、画面の窓口 [IWorkRegisterGateway] へ適合させる)
class GraphqlWorkRegisterGateway implements IWorkRegisterGateway {
  GraphqlWorkRegisterGateway(this.client, {this.auditUser});

  final GraphQLClient client;

  /// ログイン中の担当者(開始の既定の担当者に使う)。null のときは、先頭の担当者。
  final AuditUserSource? auditUser;

  String? _languageId;

  static const _intentionalReasons = [
    RegisterOption('日またぎ', '日またぎ'),
    RegisterOption('交代の引き継ぎ', '交代の引き継ぎ'),
    RegisterOption('段取り替え', '段取り替え'),
    RegisterOption('その他', 'その他'),
  ];
  static const _defectReasons = [
    RegisterOption('寸法不良', '寸法不良'),
    RegisterOption('外観不良', '外観不良'),
    RegisterOption('材料不良', '材料不良'),
    RegisterOption('設備不具合', '設備不具合'),
    RegisterOption('その他', 'その他'),
  ];

  // ---- 読み込みの道具 ----

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
    if (e != null) throw e;
    return result.data ?? const {};
  }

  /// 読み込みの結果の `all…` の `nodes`(1 つ目のフィールド)。
  Future<List<Map<String, dynamic>>> _nodes(
    DocumentNode document,
    Map<String, dynamic> variables,
  ) async {
    final data = await _run(document, variables);
    for (final v in data.values) {
      if (v is Map && v['nodes'] is List) {
        return [for (final n in v['nodes'] as List) if (n is Map) {...n.cast<String, dynamic>()}];
      }
    }
    return const [];
  }

  Future<String> _language() async {
    if (_languageId != null) return _languageId!;
    final result = await client.query(
      QueryOptions(
        document: gql(
          'query { allSharedLanguageCodes(first: 20, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }',
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final nodes =
        (result.data?['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ??
        const [];
    for (final n in nodes.whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == 'ja') {
        return _languageId = n['sharedLanguageCodeId'] as String;
      }
    }
    throw StateError('言語コード ja が見つかりません');
  }

  static String _s(Object? v) => v == null ? '' : '$v';
  static int _i(Object? v) => v == null ? 0 : (num.tryParse('$v') ?? 0).round();
  static DateTime? _d(Object? v) =>
      v == null ? null : DateTime.tryParse('$v')?.toLocal();

  /// 辞書(`sharedDictionaryBySharedDictionaryNameId.value.nodes[0].dictionaryValue`)の値。
  static String _dict(Object? labels) {
    final dict = (labels as Map?)?['sharedDictionaryBySharedDictionaryNameId'];
    final nodes = ((dict as Map?)?['value'] as Map?)?['nodes'] as List?;
    return nodes == null || nodes.isEmpty
        ? ''
        : _s((nodes.first as Map)['dictionaryValue']);
  }

  /// ラベル(`transLabelByNames.value.nodes[0].labelValue`)の値。
  static String _label(Object? labels) {
    final nodes = ((labels as Map?)?['value'] as Map?)?['nodes'] as List?;
    return nodes == null || nodes.isEmpty
        ? ''
        : _s((nodes.first as Map)['labelValue']);
  }

  // ---- 名称の引き(コンテナ・担当者・品目・顧客) ----

  Future<Map<String, String>> _containerNames() async {
    final nodes = await _nodes(documentNodeQueryRegisterContainerPageRead, {
      'first': 1000,
      'languageCodeId': await _language(),
    });
    return {
      for (final n in nodes)
        _s(n['transContainerId']): _label(n['labels']).isNotEmpty
            ? _label(n['labels'])
            : _s(n['code']).isNotEmpty
            ? _s(n['code'])
            : _s(n['symbol']),
    };
  }

  Future<List<RegisterOption>> _staffOptions() async {
    final nodes = await _nodes(documentNodeQueryRegisterStaffPageRead, {
      'first': 500,
      'languageCodeId': await _language(),
    });
    return [
      for (final n in nodes)
        RegisterOption(
          _s(n['infoStaffId']),
          _dict(n['labels']).isNotEmpty ? _dict(n['labels']) : _s(n['code']),
        ),
    ];
  }

  Future<Map<String, String>> _names(
    DocumentNode doc,
    String idKey,
    List<String> ids,
  ) async {
    if (ids.isEmpty) return const {};
    final nodes = await _nodes(doc, {
      'first': ids.length,
      'languageCodeId': await _language(),
      'filter': {
        idKey: {'in': ids},
      },
    });
    return {
      for (final n in nodes)
        _s(n[idKey]): _dict(n['labels']).isNotEmpty
            ? _dict(n['labels'])
            : _s(n['code']),
    };
  }

  // ---- 計画・明細・実績 ----

  @override
  Future<List<PlanRow>> plans() async {
    final language = await _language();
    final ops = await _nodes(documentNodeQueryRegisterPlanPageRead, {
      'first': 500,
      'orderBy': ['SYMBOL_ASC'],
    });
    if (ops.isEmpty) return const [];
    final opsIds = [for (final o in ops) _s(o['transOperationsPlanId'])];
    final works = await _nodes(documentNodeQueryRegisterWorkPlanPageRead, {
      'first': 5000,
      'languageCodeId': language,
      'orderBy': ['SEQUENCE_ASC'],
      'filter': {
        'transOperationsPlanId': {'in': opsIds},
      },
    });
    final workIds = [for (final w in works) _s(w['transWorkPlanId'])];
    final records = workIds.isEmpty
        ? const <Map<String, dynamic>>[]
        : await _nodes(documentNodeQueryRegisterWorkRecordPageRead, {
            'first': 10000,
            'orderBy': ['NTH_TIME_ASC'],
            'filter': {
              'transWorkPlanId': {'in': workIds},
            },
          });
    final recIds = [for (final r in records) _s(r['transWorkRecordId'])];
    final lotLinks = recIds.isEmpty
        ? const <Map<String, dynamic>>[]
        : await _nodes(documentNodeQueryRegisterRecordVisiterPageRead, {
            'first': 20000,
            'filter': {
              'transWorkRecordId': {'in': recIds},
            },
          });
    final defects = recIds.isEmpty
        ? const <Map<String, dynamic>>[]
        : await _nodes(documentNodeQueryRegisterRecordComplaintPageRead, {
            'first': 10000,
            'filter': {
              'transWorkRecordId': {'in': recIds},
            },
          });
    final containers = await _containerNames();
    final staffs = {for (final o in await _staffOptions()) o.id: o.label};
    final items = await _names(
      documentNodeQueryRegisterItemPageRead,
      'mstrItemId',
      {
        for (final o in ops)
          if (_s((o['resource_plan'] as Map?)?['itemId']).isNotEmpty)
            _s((o['resource_plan'] as Map)['itemId']),
      }.toList(),
    );
    final customers = await _names(
      documentNodeQueryRegisterStakeholderPageRead,
      'mstrStakeholderId',
      {
        for (final o in ops)
          if (_s(_order(o)?['stakeholderId']).isNotEmpty)
            _s(_order(o)!['stakeholderId']),
      }.toList(),
    );

    // 作業実績ごとの、取り出した数量(− の行の合計)・払出元のコンテナ・不適合の数量
    final taken = <String, int>{};
    final source = <String, String>{};
    for (final l in lotLinks) {
      final v = l['visiter'] as Map?;
      final q = v == null ? 0 : _i(v['quantity']);
      if (q < 0) {
        final id = _s(l['transWorkRecordId']);
        taken[id] = (taken[id] ?? 0) - q;
        source.putIfAbsent(id, () => containers[_s(v!['transContainerId'])] ?? '');
      }
    }
    final defect = <String, int>{};
    for (final d in defects) {
      final id = _s(d['transWorkRecordId']);
      defect[id] = (defect[id] ?? 0) + _i(d['quantity']);
    }
    final resultsOf = <String, List<ResultRow>>{};
    for (final r in records) {
      final id = _s(r['transWorkRecordId']);
      final finished = _d(r['stopAt']);
      resultsOf.putIfAbsent(_s(r['transWorkPlanId']), () => []).add(
        ResultRow(
          id: id,
          round: _i(r['nthTime']),
          resultNo: _s(r['symbol']),
          staffName: staffs[_s(r['staffId'])] ?? '',
          containerName: source[id] ?? '',
          startedAt: _d(r['startAt']) ?? DateTime.fromMillisecondsSinceEpoch(0),
          finishedAt: finished,
          startQuantity: taken[id] ?? 0,
          doneQuantity: finished == null ? null : _i(r['qty']),
          defectQuantity: defect[id] ?? 0,
        ),
      );
    }

    final stepsOf = <String, List<StepRow>>{};
    final lastDone = <String, int>{};
    for (final w in works) {
      final reg = _firstNode(w['register']);
      final quantity = _i(reg?['quantity']);
      final done = _i(reg?['doneQuantity']);
      final start = _d(w['startAt']);
      final finish = _d(w['completionAt']);
      final opsId = _s(w['transOperationsPlanId']);
      stepsOf.putIfAbsent(opsId, () => []).add(
        StepRow(
          id: _s(w['transWorkPlanId']),
          planId: opsId,
          sequence: _i(w['sequence']),
          processName: _dict((w['task'] as Map?)?['labels']),
          plannedMinutes: start == null || finish == null
              ? 0
              : finish.difference(start).inMinutes,
          startPlan: start,
          finishPlan: finish,
          // 完了 = 計画数量ぶんの完了数量がある(DB の v_register_target の列から)
          completed: quantity > 0 && done >= quantity,
          results: resultsOf[_s(w['transWorkPlanId'])] ?? const [],
        ),
      );
      lastDone[opsId] = done; // 工程順に並んでいるため、最後に入った値 = 最終工程の完了数量
    }
    return [
      for (final o in ops)
        PlanRow(
          id: _s(o['transOperationsPlanId']),
          planNo: _s(o['symbol']),
          itemName: items[_s((o['resource_plan'] as Map?)?['itemId'])] ?? '',
          orderNo: _s(_order(o)?['orderNumber']),
          customer: customers[_s(_order(o)?['stakeholderId'])] ?? '',
          quantity: _i(o['quantity']),
          completedQuantity: lastDone[_s(o['transOperationsPlanId'])] ?? 0,
          due: _d(o['deadline']),
          steps: stepsOf[_s(o['transOperationsPlanId'])] ?? const [],
        ),
    ];
  }

  static Map<String, dynamic>? _order(Map<String, dynamic> op) {
    final rp = op['resource_plan'] as Map?;
    final od = rp?['order_detail'] as Map?;
    final o = od?['order'] as Map?;
    return o?.cast<String, dynamic>();
  }

  static Map<String, dynamic>? _firstNode(Object? connection) {
    final nodes = (connection as Map?)?['nodes'] as List?;
    return nodes == null || nodes.isEmpty
        ? null
        : (nodes.first as Map).cast<String, dynamic>();
  }

  /// 工程計画明細 1 件(工程順・生産計画・登録の判定)。
  Future<Map<String, dynamic>> _work(String stepId) async {
    final nodes = await _nodes(documentNodeQueryRegisterWorkPlanPageRead, {
      'first': 1,
      'languageCodeId': await _language(),
      'filter': {
        'transWorkPlanId': {'equalTo': stepId},
      },
    });
    if (nodes.isEmpty) {
      throw const RegisterFailedException('工程計画明細が見つかりません');
    }
    return nodes.first;
  }

  // ---- コンテナの候補 ----

  /// 取り出せるロットから、コンテナごとの候補を作る(制限は、クラスの説明)。
  Future<List<ContainerStock>> _candidates(String stepId, String query) async {
    final work = await _work(stepId);
    final seq = _i(work['sequence']);
    final opsId = _s(work['transOperationsPlanId']);
    final planNodes = await _nodes(documentNodeQueryRegisterPlanPageRead, {
      'first': 1,
      'filter': {
        'transOperationsPlanId': {'equalTo': opsId},
      },
    });
    final planItem = planNodes.isEmpty
        ? ''
        : _s((planNodes.first['resource_plan'] as Map?)?['itemId']);

    final lots = await _nodes(documentNodeQueryRegisterLotPageRead, {
      'first': 3000,
      'languageCodeId': await _language(),
      'filter': {
        'quantity': {'greaterThan': 0},
      },
    });
    final lotIds = [for (final l in lots) _s(l['transVisiterId'])];
    final itemOf = <String, String>{};
    if (lotIds.isNotEmpty) {
      for (final n in await _nodes(documentNodeQueryRegisterLotItemPageRead, {
        'first': lotIds.length + 10,
        'filter': {
          'transVisiterId': {'in': lotIds},
        },
      })) {
        itemOf[_s(n['transVisiterId'])] = _s(n['mstrItemId']);
      }
    }

    // 2 工程目以降: 前の工程の作業実績が入庫した(+ の行)ロット
    final previousLots = <String>{};
    if (seq > 1) {
      final siblings = await _nodes(documentNodeQueryRegisterWorkPlanPageRead, {
        'first': 200,
        'languageCodeId': await _language(),
        'filter': {
          'transOperationsPlanId': {'equalTo': opsId},
          'sequence': {'lessThan': seq},
        },
        'orderBy': ['SEQUENCE_DESC'],
      });
      if (siblings.isNotEmpty) {
        final previousWork = _s(siblings.first['transWorkPlanId']);
        final recs = await _nodes(documentNodeQueryRegisterWorkRecordPageRead, {
          'first': 1000,
          'filter': {
            'transWorkPlanId': {'equalTo': previousWork},
          },
        });
        final recIds = [for (final r in recs) _s(r['transWorkRecordId'])];
        if (recIds.isNotEmpty) {
          for (final l in await _nodes(
            documentNodeQueryRegisterRecordVisiterPageRead,
            {
              'first': 5000,
              'filter': {
                'transWorkRecordId': {'in': recIds},
              },
            },
          )) {
            final v = l['visiter'] as Map?;
            if (v != null && _i(v['quantity']) > 0) {
              previousLots.add(_s(l['transVisiterId']));
            }
          }
        }
      }
    }

    final byContainer = <String, ContainerStock>{};
    for (final l in lots) {
      final container = l['container'] as Map?;
      final cid = _s(l['transContainerId']);
      final name = _label(container?['labels']).isNotEmpty
          ? _label(container?['labels'])
          : _s(container?['code']).isNotEmpty
          ? _s(container?['code'])
          : _s(container?['symbol']);
      final issuable = l['issuable'] == true;
      final lotId = _s(l['transVisiterId']);
      final matches = seq == 1
          ? (itemOf[lotId] ?? '').isNotEmpty && itemOf[lotId] != planItem
          : previousLots.contains(lotId);
      final available = issuable && matches;
      final qty = _i(l['quantity']);
      final reason = available
          ? ''
          : !issuable
          ? (_s(l['blockReason']).isNotEmpty ? _s(l['blockReason']) : '取り出せないロットです')
          : seq == 1
          ? 'この生産計画の材料ではありません'
          : '前の工程の完了品ではありません';
      final stock = ContainerStock(
        id: cid,
        name: name,
        location: '',
        contents: matches ? (seq == 1 ? '材料' : '前工程の完了品') : '',
        quantity: qty,
        available: available,
        unavailableReason: reason,
      );
      final current = byContainer[cid];
      // 同じコンテナに複数のロットがあるとき、取り出せるものの最大の 1 ロットを候補にする
      if (current == null ||
          (!current.available && available) ||
          (current.available == available && qty > current.quantity)) {
        byContainer[cid] = stock;
      }
    }
    final q = query.trim().toLowerCase();
    final list = [
      for (final s in byContainer.values)
        if (q.isEmpty || s.name.toLowerCase().contains(q)) s,
    ]..sort((a, b) {
        if (a.available != b.available) return a.available ? -1 : 1;
        final byQty = b.quantity.compareTo(a.quantity);
        return byQty != 0 ? byQty : a.name.compareTo(b.name);
      });
    return list;
  }

  @override
  Future<StartDefaults> startDefaults(String stepId) async {
    final staffs = await _staffOptions();
    final me = auditUser == null ? null : (await auditUser!())?.staffId;
    final defaultStaff = staffs.any((s) => s.id == me)
        ? me
        : (staffs.isEmpty ? null : staffs.first.id);
    final list = await _candidates(stepId, '');
    final reg = _firstNode((await _work(stepId))['register']);
    final first = list.where((c) => c.available).firstOrNull;
    return StartDefaults(
      staffs: staffs,
      defaultStaffId: defaultStaff,
      containers: list,
      remaining: _i(reg?['remainingQuantity']),
      defaultContainerId: first?.id,
    );
  }

  @override
  Future<List<ContainerStock>> containers(
    String stepId, {
    String query = '',
  }) => _candidates(stepId, query);

  // ---- 登録 ----

  Never _fail(Object e) {
    if (e is OperationException) {
      final message = e.graphqlErrors.map((x) => x.message).join(' ');
      if (message.contains('計画の残りを超えて')) {
        throw const RegisterValidationException({
          'quantity': RegisterError.overRemaining,
        });
      }
      if (message.contains('開始数量は 0')) {
        throw const RegisterValidationException({
          'quantity': RegisterError.notPositive,
        });
      }
      if (message.contains('取り出した数量を超えて')) {
        throw const RegisterValidationException({
          'done': RegisterError.overTaken,
        });
      }
      if (message.contains('合計は 0 より大きく')) {
        throw const RegisterValidationException({
          'done': RegisterError.notPositive,
        });
      }
      if (message.isNotEmpty) throw RegisterFailedException(message);
    }
    throw e;
  }

  @override
  Future<RegisterOutcome> start(StartRequest request) async {
    final errors = <String, RegisterError>{};
    if (request.staffId.isEmpty) errors['staff'] = RegisterError.required;
    if (request.containerId.isEmpty) errors['container'] = RegisterError.required;
    if (request.quantity <= 0) errors['quantity'] = RegisterError.notPositive;
    if (errors.isNotEmpty) throw RegisterValidationException(errors);

    final candidates = await _candidates(request.stepId, '');
    final box = candidates.where((c) => c.id == request.containerId).firstOrNull;
    if (box == null || !box.available) {
      throw const RegisterValidationException({
        'container': RegisterError.notAvailable,
      });
    }
    if (request.quantity > box.quantity) {
      throw const RegisterValidationException({
        'quantity': RegisterError.overStock,
      });
    }
    // 払い出す 1 ロット = そのコンテナの、取り出せる最大のロット
    final lot = await _lotOf(request.stepId, request.containerId);
    try {
      final data = await _run(
        documentNodeMutationRegisterWorkRecordStartPageCall,
        {
          'pWorkPlanId': request.stepId,
          'pVisiterId': lot,
          'pQty': '${request.quantity}',
          'pStaffId': request.staffId,
        },
        mutation: true,
      );
      final rec = (data['workRecordStart'] as Map?)?['transWorkRecord'] as Map?;
      if (rec == null) {
        throw const RegisterFailedException('開始を登録できませんでした');
      }
      return RegisterOutcome(
        started: true,
        resultNo: _s(rec['symbol']),
        round: _i(rec['nthTime']),
        containerName: box.name,
        quantity: request.quantity,
        stepCompleted: false,
        updatedCount: 2, // 作業実績 + コンテナのロットの払出
      );
    } on Object catch (e) {
      if (e is RegisterFailedException) rethrow;
      _fail(e);
    }
  }

  /// 開始で払い出すロット(そのコンテナの、取り出せる最大のロット)の ID。
  Future<String> _lotOf(String stepId, String containerId) async {
    final lots = await _nodes(documentNodeQueryRegisterLotPageRead, {
      'first': 500,
      'languageCodeId': await _language(),
      'filter': {
        'transContainerId': {'equalTo': containerId},
        'issuable': {'equalTo': true},
        'quantity': {'greaterThan': 0},
      },
      'orderBy': ['QUANTITY_DESC'],
    });
    if (lots.isEmpty) {
      throw const RegisterFailedException('取り出せるロットがありません');
    }
    return _s(lots.first['transVisiterId']);
  }

  Future<Map<String, dynamic>?> _openRecord(String stepId) async {
    final recs = await _nodes(documentNodeQueryRegisterWorkRecordPageRead, {
      'first': 5,
      'orderBy': ['NTH_TIME_DESC'],
      'filter': {
        'transWorkPlanId': {'equalTo': stepId},
        'stopAt': {'isNull': true},
      },
    });
    return recs.isEmpty ? null : recs.first;
  }

  @override
  Future<FinishContext> finishContext(String stepId) async {
    final open = await _openRecord(stepId);
    if (open == null) {
      throw const RegisterFailedException('実施中の実績がありません。');
    }
    final links = await _nodes(documentNodeQueryRegisterRecordVisiterPageRead, {
      'first': 100,
      'filter': {
        'transWorkRecordId': {'equalTo': _s(open['transWorkRecordId'])},
      },
    });
    var taken = 0;
    String sourceId = '';
    for (final l in links) {
      final v = l['visiter'] as Map?;
      final q = v == null ? 0 : _i(v['quantity']);
      if (q < 0) {
        taken -= q;
        if (sourceId.isEmpty) sourceId = _s(v!['transContainerId']);
      }
    }
    final names = await _containerNames();
    return FinishContext(
      resultId: _s(open['transWorkRecordId']),
      taken: taken,
      sourceContainerId: sourceId,
      sourceContainerName: names[sourceId] ?? '',
      containers: [
        for (final e in names.entries)
          ContainerStock(
            id: e.key,
            name: e.value,
            location: '',
            contents: '',
            quantity: 0,
          ),
      ],
      intentionalReasons: _intentionalReasons,
      defectReasons: _defectReasons,
    );
  }

  @override
  Future<RegisterOutcome> finish(FinishRequest request) async {
    final ctx = await finishContext(request.stepId);
    final done = request.doneQuantity;
    final errors = <String, RegisterError>{};
    if (done < 0) errors['done'] = RegisterError.notPositive;
    if (done > ctx.taken) errors['done'] = RegisterError.overTaken;
    if (request.destinationContainerId.isEmpty) {
      errors['destination'] = RegisterError.required;
    }
    final shortfall = ctx.taken - done;
    var defect = 0;
    String? reason;
    if (shortfall > 0 && !errors.containsKey('done')) {
      if (request.intentional == null) {
        errors['shortfall'] = RegisterError.required;
      } else if (request.intentional!) {
        reason = request.intentionalReasonId;
        if ((reason ?? '').isEmpty) {
          errors['intentionalReason'] = RegisterError.reasonRequired;
        }
      } else {
        defect = request.defectQuantity ?? 0;
        reason = request.defectReasonId;
        if (defect <= 0) errors['defectQuantity'] = RegisterError.notPositive;
        if (defect > shortfall) {
          errors['defectQuantity'] = RegisterError.overShortfall;
        }
        if ((reason ?? '').isEmpty) {
          errors['defectReason'] = RegisterError.reasonRequired;
        }
        if ((request.defectContainerId ?? '').isEmpty) {
          errors['defectContainer'] = RegisterError.required;
        }
      }
    }
    if (errors.isNotEmpty) throw RegisterValidationException(errors);

    final intentional = shortfall > 0 && request.intentional == true;
    try {
      final data = await _run(
        documentNodeMutationRegisterInspectionPageCall,
        {
          'pPassQty': '$done',
          'pContainerId': request.destinationContainerId,
          'pWorkRecordId': ctx.resultId,
          'pFailQty': '$defect',
          if (defect > 0) 'pFailContainerId': request.defectContainerId,
          if (defect > 0) 'pReason': reason,
          if (intentional) 'pReturnReason': reason,
        },
        mutation: true,
      );
      final rows = (data['inspectionRegister'] as Map?)?['results'] as List?;
      final row = rows == null || rows.isEmpty ? null : rows.first as Map;
      if (row == null) {
        throw const RegisterFailedException('終了を登録できませんでした');
      }
      final names = {for (final c in ctx.containers) c.id: c.name};
      final work = await _work(request.stepId);
      final reg = _firstNode(work['register']);
      final records = await _nodes(documentNodeQueryRegisterWorkRecordPageRead, {
        'first': 1,
        'filter': {
          'transWorkRecordId': {'equalTo': ctx.resultId},
        },
      });
      final ids = [
        row['workRecordId'],
        row['passVisiterId'],
        row['failVisiterId'],
        row['returnVisiterId'],
        row['complaintId'],
      ];
      return RegisterOutcome(
        started: false,
        resultNo: records.isEmpty ? '' : _s(records.first['symbol']),
        round: records.isEmpty ? 0 : _i(records.first['nthTime']),
        containerName: names[request.destinationContainerId] ?? '',
        quantity: done,
        stepCompleted:
            _i(reg?['quantity']) > 0 &&
            _i(reg?['doneQuantity']) >= _i(reg?['quantity']),
        updatedCount: ids.where((x) => x != null).length,
        defectNo: row['complaintId'] == null
            ? null
            : await _complaintSymbol(_s(row['complaintId'])),
        defectQuantity: defect,
        defectContainerName: names[request.defectContainerId],
        returnedQuantity: _i(row['returnQuantity']),
        returnedContainerName: _i(row['returnQuantity']) > 0
            ? ctx.sourceContainerName
            : null,
      );
    } on Object catch (e) {
      if (e is RegisterFailedException) rethrow;
      _fail(e);
    }
  }

  Future<String> _complaintSymbol(String id) async {
    final data = await _run(
      gql(
        r'query($id: UUID!) { transComplaintByTransComplaintId(transComplaintId: $id) { symbol } }',
      ),
      {'id': id},
    );
    return _s((data['transComplaintByTransComplaintId'] as Map?)?['symbol']);
  }
}
