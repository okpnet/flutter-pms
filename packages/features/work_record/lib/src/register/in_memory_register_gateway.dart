import 'register_gateway.dart';
import 'register_models.dart';

class _Box {
  _Box(
    this.id,
    this.name,
    this.location,
    this.quantity, {
    this.materialOrders = const {},
    Set<String>? outputOf,
    Set<String>? reservedFor,
  }) : outputOf = outputOf ?? {},
       reservedFor = reservedFor ?? {};

  final String id;
  final String name;
  final String location;
  int quantity;

  /// 材料として入っている注文(最初の工程で取り出せる)。
  final Set<String> materialOrders;

  /// 前工程の完了品として入っている(`計画#工程順`)。次の工程で取り出せる。
  final Set<String> outputOf;

  /// 引当のある明細。
  final Set<String> reservedFor;

  /// 意図的な差を返した明細(次の開始は引継ぎになる)。
  final Set<String> handoverFor = {};
}

class _Step {
  _Step(this.id, this.planId, this.sequence, this.process, this.minutes);

  final String id;
  final String planId;
  final int sequence;
  final String process;
  final int minutes;
  final List<ResultRow> results = [];
  bool completed = false;
}

class _Plan {
  _Plan(this.id, this.no, this.item, this.order, this.customer, this.quantity);

  final String id;
  final String no;
  final String item;
  final String order;
  final String customer;
  final int quantity;
  int completed = 0;
  final List<_Step> steps = [];
}

/// メモリ上のサンプルの取得元(Fake)。登録の規則(取り出せる数量・差の扱い・払出)を、DB の関数と同じに動かす。
///
/// 規則:
/// 1. 取り出せるコンテナ: 最初の工程は、同じ注文に紐づく材料が入ったコンテナ。2 工程目以降は、同じ生産計画で前の工程の
///    完了品を入庫したコンテナ。引当があるものを先に、次に数量の多い順。
/// 2. 開始数量は、コンテナの在庫と、計画の残り(計画数量 − 完了数量 − 実施中の取り出し数量)の小さい方まで。
/// 3. 終了の完了数量は、取り出した数量まで。少ないときは、意図的(差を払出元へ返す。次の開始は引継ぎ)か、
///    不適合(工程異常として、不適合の数量を選んだコンテナへ払い出す。満たない差は払出元へ返す)。
/// 4. 最終工程の完了数量は、生産計画の完了数量に積む。
class InMemoryWorkRegisterGateway implements IWorkRegisterGateway {
  InMemoryWorkRegisterGateway({
    DateTime Function()? now,
    this.latency = Duration.zero,
    this.failNext = false,
  }) : _now = now ?? DateTime.now {
    _seed();
  }

  final DateTime Function() _now;

  /// 通信の待ち(画面の待ち表示の確認用)。
  final Duration latency;

  /// true のとき、次の登録を失敗させる(失敗の表示の確認用)。登録すると false に戻る。
  bool failNext;

  final List<_Plan> _plans = [];
  final List<_Box> _boxes = [];
  final List<RegisterOption> _staffs = const [
    RegisterOption('s1', '田中 太郎'),
    RegisterOption('s2', '佐藤 花子'),
    RegisterOption('s3', '鈴木 一郎'),
  ];
  static const _intentionalReasons = [
    RegisterOption('i1', '日またぎ'),
    RegisterOption('i2', '交代の引き継ぎ'),
    RegisterOption('i3', '段取り替え'),
    RegisterOption('i4', 'その他'),
  ];
  static const _defectReasons = [
    RegisterOption('d1', '寸法不良'),
    RegisterOption('d2', '外観不良'),
    RegisterOption('d3', '材料不良'),
    RegisterOption('d4', '設備不具合'),
    RegisterOption('d5', 'その他'),
  ];
  String? _lastStaffId;
  int _resultSeq = 0;
  int _defectSeq = 0;

  void _seed() {
    final p1 = _Plan('p1', 'PP-0001', '軸受ハウジング', 'SO-1001', '東西製作所', 100);
    final p2 = _Plan('p2', 'PP-0002', 'シャフト', 'SO-1002', '南北工業', 60);
    for (final (plan, procs) in [
      (p1, ['切断', '旋削', '検査']),
      (p2, ['切断', '研磨']),
    ]) {
      for (var i = 0; i < procs.length; i++) {
        plan.steps.add(
          _Step('${plan.id}-${i + 1}', plan.id, i + 1, procs[i], 30 + i * 15),
        );
      }
      _plans.add(plan);
    }
    _boxes.addAll([
      _Box('c1', 'C-001', 'A棚-1', 120, materialOrders: {'SO-1001'}),
      _Box('c2', 'C-002', 'A棚-2', 80, materialOrders: {'SO-1001'},
          reservedFor: {'p1-1'}),
      _Box('c3', 'C-003', 'B棚-1', 60, materialOrders: {'SO-1002'}),
      _Box('c4', 'C-004', 'B棚-2', 0),
      _Box('c5', 'C-005', 'C棚-1', 40, materialOrders: {'SO-9999'}),
    ]);
  }

  Future<void> _wait() async {
    if (latency > Duration.zero) await Future<void>.delayed(latency);
  }

  _Step _step(String stepId) {
    for (final p in _plans) {
      for (final s in p.steps) {
        if (s.id == stepId) return s;
      }
    }
    throw RegisterFailedException('工程計画明細が見つかりません: $stepId');
  }

  _Plan _planOf(_Step s) => _plans.firstWhere((p) => p.id == s.planId);

  _Box _box(String id) => _boxes.firstWhere(
    (b) => b.id == id,
    orElse: () => throw RegisterFailedException('コンテナが見つかりません: $id'),
  );

  int _openTaken(_Plan plan) => [
    for (final s in plan.steps)
      for (final r in s.results)
        if (r.open) r.startQuantity,
  ].fold(0, (a, b) => a + b);

  int _remaining(_Plan plan) {
    final v = plan.quantity - plan.completed - _openTaken(plan);
    return v < 0 ? 0 : v;
  }

  bool _matches(_Box b, _Step s, _Plan p) => s.sequence == 1
      ? b.materialOrders.contains(p.order)
      : b.outputOf.contains('${p.id}#${s.sequence - 1}');

  ContainerStock _stock(_Box b, _Step s, _Plan p) {
    final ok = b.quantity > 0 && _matches(b, s, p);
    return ContainerStock(
      id: b.id,
      name: b.name,
      location: b.location,
      contents: _matches(b, s, p)
          ? (s.sequence == 1 ? '材料(${p.order})' : '前工程の完了品')
          : '',
      quantity: b.quantity,
      reserved: b.reservedFor.contains(s.id),
      available: ok,
      unavailableReason: ok
          ? ''
          : b.quantity <= 0
          ? '在庫がありません'
          : s.sequence == 1
          ? 'この注文の材料ではありません'
          : '前の工程の完了品ではありません',
    );
  }

  List<ContainerStock> _candidates(_Step s, _Plan p, String query) {
    final q = query.trim().toLowerCase();
    final list = [
      for (final b in _boxes)
        if (q.isEmpty ||
            b.name.toLowerCase().contains(q) ||
            b.location.toLowerCase().contains(q))
          _stock(b, s, p),
    ];
    list.sort((a, b) {
      if (a.available != b.available) return a.available ? -1 : 1;
      if (a.reserved != b.reserved) return a.reserved ? -1 : 1;
      final byQty = b.quantity.compareTo(a.quantity);
      return byQty != 0 ? byQty : a.name.compareTo(b.name);
    });
    return list;
  }

  @override
  Future<List<PlanRow>> plans() async {
    await _wait();
    return [
      for (final p in _plans)
        PlanRow(
          id: p.id,
          planNo: p.no,
          itemName: p.item,
          orderNo: p.order,
          customer: p.customer,
          quantity: p.quantity,
          completedQuantity: p.completed,
          due: DateTime(2026, 12, 1),
          steps: [
            for (final s in p.steps)
              StepRow(
                id: s.id,
                planId: s.planId,
                sequence: s.sequence,
                processName: s.process,
                plannedMinutes: s.minutes,
                completed: s.completed,
                startPlan: DateTime(2026, 11, 20 + s.sequence),
                finishPlan: DateTime(2026, 11, 21 + s.sequence),
                equipment: 'M-${s.sequence}0',
                results: List.unmodifiable(s.results),
              ),
          ],
        ),
    ];
  }

  @override
  Future<StartDefaults> startDefaults(String stepId) async {
    await _wait();
    final s = _step(stepId);
    final p = _planOf(s);
    final list = _candidates(s, p, '');
    final first = list.where((c) => c.available).firstOrNull;
    return StartDefaults(
      staffs: _staffs,
      defaultStaffId: _lastStaffId ?? _staffs.first.id,
      containers: list,
      remaining: _remaining(p),
      defaultContainerId: first?.id,
    );
  }

  @override
  Future<List<ContainerStock>> containers(
    String stepId, {
    String query = '',
  }) async {
    await _wait();
    final s = _step(stepId);
    return _candidates(s, _planOf(s), query);
  }

  void _failIfRequested() {
    if (failNext) {
      failNext = false;
      throw const RegisterFailedException('サーバーの更新に失敗しました。時間をおいてもう一度登録してください。');
    }
  }

  @override
  Future<RegisterOutcome> start(StartRequest request) async {
    await _wait();
    final s = _step(request.stepId);
    final p = _planOf(s);
    final errors = <String, RegisterError>{};
    final box = _boxes.where((b) => b.id == request.containerId).firstOrNull;
    if (request.staffId.isEmpty) errors['staff'] = RegisterError.required;
    if (box == null) errors['container'] = RegisterError.required;
    if (request.quantity <= 0) errors['quantity'] = RegisterError.notPositive;
    if (box != null) {
      if (!_stock(box, s, p).available) {
        errors['container'] = RegisterError.notAvailable;
      } else if (request.quantity > box.quantity) {
        errors['quantity'] = RegisterError.overStock;
      }
    }
    if (request.quantity > _remaining(p) && !errors.containsKey('quantity')) {
      errors['quantity'] = RegisterError.overRemaining;
    }
    if (errors.isNotEmpty) throw RegisterValidationException(errors);
    if (s.completed) throw const RegisterFailedException('この工程は完了しています。');
    if (s.results.any((r) => r.open)) {
      throw const RegisterFailedException('この工程は実施中です。先に終了を登録してください。');
    }
    _failIfRequested();

    final b = box!;
    b.quantity -= request.quantity;
    final handover = b.handoverFor.remove(s.id);
    _lastStaffId = request.staffId;
    final result = ResultRow(
      id: 'r${++_resultSeq}',
      round: s.results.length + 1,
      resultNo: 'WR-${_resultSeq.toString().padLeft(4, '0')}',
      staffName: _staffs.firstWhere((x) => x.id == request.staffId).label,
      containerName: b.name,
      startedAt: _now(),
      startQuantity: request.quantity,
      handover: handover,
    );
    s.results.add(result);
    return RegisterOutcome(
      started: true,
      resultNo: result.resultNo,
      round: result.round,
      containerName: b.name,
      quantity: request.quantity,
      stepCompleted: false,
      updatedCount: 2, // 実績 + コンテナの払出
    );
  }

  @override
  Future<FinishContext> finishContext(String stepId) async {
    await _wait();
    final s = _step(stepId);
    final open = s.results.where((r) => r.open).firstOrNull;
    if (open == null) {
      throw const RegisterFailedException('実施中の実績がありません。');
    }
    final p = _planOf(s);
    final source = _boxes.firstWhere((b) => b.name == open.containerName);
    return FinishContext(
      resultId: open.id,
      taken: open.startQuantity,
      sourceContainerId: source.id,
      sourceContainerName: source.name,
      containers: [for (final b in _boxes) _stock(b, s, p)],
      intentionalReasons: _intentionalReasons,
      defectReasons: _defectReasons,
    );
  }

  @override
  Future<RegisterOutcome> finish(FinishRequest request) async {
    await _wait();
    final s = _step(request.stepId);
    final p = _planOf(s);
    final i = s.results.lastIndexWhere((r) => r.open);
    if (i < 0) throw const RegisterFailedException('実施中の実績がありません。');
    final open = s.results[i];
    final source = _boxes.firstWhere((b) => b.name == open.containerName);
    final done = request.doneQuantity;
    final errors = <String, RegisterError>{};
    if (done < 0) errors['done'] = RegisterError.notPositive;
    if (done > open.startQuantity) errors['done'] = RegisterError.overTaken;
    if (!_boxes.any((b) => b.id == request.destinationContainerId)) {
      errors['destination'] = RegisterError.required;
    }
    final shortfall = open.startQuantity - done;
    var defect = 0;
    if (shortfall > 0 && !errors.containsKey('done')) {
      if (request.intentional == null) {
        errors['shortfall'] = RegisterError.required;
      } else if (request.intentional!) {
        if ((request.intentionalReasonId ?? '').isEmpty) {
          errors['intentionalReason'] = RegisterError.reasonRequired;
        }
      } else {
        defect = request.defectQuantity ?? 0;
        if (defect <= 0) errors['defectQuantity'] = RegisterError.notPositive;
        if (defect > shortfall) {
          errors['defectQuantity'] = RegisterError.overShortfall;
        }
        if ((request.defectReasonId ?? '').isEmpty) {
          errors['defectReason'] = RegisterError.reasonRequired;
        }
        if (!_boxes.any((b) => b.id == request.defectContainerId)) {
          errors['defectContainer'] = RegisterError.required;
        }
      }
    }
    if (errors.isNotEmpty) throw RegisterValidationException(errors);
    _failIfRequested();

    var updated = 1; // 実績
    final dest = _box(request.destinationContainerId);
    if (done > 0) {
      dest.quantity += done;
      dest.outputOf.add('${p.id}#${s.sequence}');
      updated++;
    }
    String? defectNo;
    String? defectBoxName;
    var returned = 0;
    if (shortfall > 0) {
      if (request.intentional!) {
        returned = shortfall;
        source.quantity += shortfall;
        source.handoverFor.add(s.id);
        updated++;
      } else {
        final d = _box(request.defectContainerId!);
        d.quantity += defect;
        defectNo = 'NC-${(++_defectSeq).toString().padLeft(4, '0')}';
        defectBoxName = d.name;
        updated += 2; // 工程異常 + 払出
        returned = shortfall - defect;
        if (returned > 0) {
          source.quantity += returned;
          updated++;
        }
      }
    }
    s.results[i] = ResultRow(
      id: open.id,
      round: open.round,
      resultNo: open.resultNo,
      staffName: open.staffName,
      containerName: open.containerName,
      startedAt: open.startedAt,
      finishedAt: _now(),
      startQuantity: open.startQuantity,
      doneQuantity: done,
      defectQuantity: defect,
      handover: open.handover,
    );
    final totalDone = s.results.fold<int>(0, (a, r) => a + (r.doneQuantity ?? 0));
    if (totalDone >= p.quantity) {
      s.completed = true;
      updated++;
    }
    if (s.sequence == p.steps.length) p.completed += done;
    return RegisterOutcome(
      started: false,
      resultNo: open.resultNo,
      round: open.round,
      containerName: dest.name,
      quantity: done,
      stepCompleted: s.completed,
      updatedCount: updated,
      defectNo: defectNo,
      defectQuantity: defect,
      defectContainerName: defectBoxName,
      returnedQuantity: returned,
      returnedContainerName: returned > 0 ? source.name : null,
    );
  }
}
