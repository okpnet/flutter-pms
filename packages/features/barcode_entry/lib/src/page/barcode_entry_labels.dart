import '../i18n/strings_provider.dart';
import '../logic/scan_flow.dart';
import '../logic/scan_models.dart';

/// 種類・段階・通知・履歴を、表示時に文字列へ変換する(エラーは種類で持ち、文字列にしない)。
extension BarcodeEntryLabels on BarcodeEntryStrings {
  String stepTitle(ScanStep step) => switch (step) {
    ScanStep.top => steps.top,
    ScanStep.start => steps.start,
    ScanStep.issueShelf => steps.issueShelf,
    ScanStep.qty => steps.qty,
    ScanStep.eval => steps.eval,
    ScanStep.ng => steps.ng,
    ScanStep.putShelf => steps.putShelf,
    ScanStep.stockItem => steps.stockItem,
    ScanStep.stockQty => steps.stockQty,
    ScanStep.recvQty => steps.recvQty,
    ScanStep.recvEval => steps.recvEval,
    ScanStep.equipment => steps.equipment,
  };

  String kindName(SymbolKind kind) => switch (kind) {
    SymbolKind.work => kinds.work,
    SymbolKind.shelf => kinds.shelf,
    SymbolKind.purchase => kinds.purchase,
    SymbolKind.item => kinds.item,
    SymbolKind.equipment => kinds.equipment,
  };

  String modeLabel(ScanMode mode) => switch (mode) {
    ScanMode.work => modes.work.label,
    ScanMode.receive => modes.receive.label,
    ScanMode.shelf => modes.shelf.label,
    ScanMode.equipment => modes.equipment.label,
  };

  String modeHint(ScanMode? mode) => switch (mode) {
    null => input.topHint,
    ScanMode.work => modes.work.hint,
    ScanMode.receive => modes.receive.hint,
    ScanMode.shelf => modes.shelf.hint,
    ScanMode.equipment => modes.equipment.hint,
  };

  String reasonLabel(RejectReason reason) => switch (reason) {
    RejectReason.dimension => ngReasons.dimension,
    RejectReason.appearance => ngReasons.appearance,
    RejectReason.material => ngReasons.material,
    RejectReason.shortage => ngReasons.shortage,
    RejectReason.other => ngReasons.other,
  };

  String resultLabel(InspectionResult result) => switch (result) {
    InspectionResult.pass => input.inspectionResults.pass,
    InspectionResult.fail => input.inspectionResults.fail,
    InspectionResult.recheck => input.inspectionResults.recheck,
  };

  String noticeText(ScanNotice n) {
    final a = n.args;
    return switch (n.kind) {
      NoticeKind.empty => notice.empty,
      NoticeKind.unknown => notice.unknown(value: a['value']!),
      NoticeKind.wrongKind => notice.wrongKind(
        mode: modeLabel(a['mode']! as ScanMode),
        expected: kindName(a['expected']! as SymbolKind),
        actual: kindName(a['actual']! as SymbolKind),
      ),
      NoticeKind.needShelfFirst => notice.needShelfFirst,
      NoticeKind.expectShelf => notice.expectShelf(
        actual: kindName(a['actual']! as SymbolKind),
      ),
      NoticeKind.expectItem => notice.expectItem(
        actual: kindName(a['actual']! as SymbolKind),
      ),
      NoticeKind.qtyInvalid => notice.qtyInvalid,
      NoticeKind.qtyOverWork => notice.qtyOverWork(
        remain: a['remain']!,
        unit: a['unit']!,
      ),
      NoticeKind.qtyOverPurchase => notice.qtyOverPurchase(
        remain: a['remain']!,
        unit: a['unit']!,
      ),
      NoticeKind.workDone => notice.workDone,
      NoticeKind.purchaseDone => notice.purchaseDone,
      NoticeKind.canceled => notice.canceled,
      NoticeKind.notStarted => notice.notStarted,
      NoticeKind.started => notice.started(shelf: a['shelf']!),
      NoticeKind.stored => notice.stored(shelf: a['shelf']!),
      NoticeKind.inspected => notice.inspected,
      NoticeKind.failed => notice.failed,
    };
  }

  String logText(ScanLogEntry e) {
    final a = e.args;
    String judge() =>
        a['judge'] == 'fail' ? input.judgeFail : input.judgePass;
    return switch (e.kind) {
      LogKind.unknown => log.unknown(value: a['value']!),
      LogKind.workDone => log.workDone(
        sym: a['sym']!,
        item: a['item']!,
        task: a['task']!,
      ),
      LogKind.purchaseDone => log.purchaseDone(
        sym: a['sym']!,
        item: a['item']!,
      ),
      LogKind.canceled => log.canceled,
      LogKind.notStarted => log.notStarted(sym: a['sym']!),
      LogKind.started => log.started(
        sym: a['sym']!,
        item: a['item']!,
        task: a['task']!,
        shelf: a['shelf']!,
      ),
      LogKind.storedWork => log.storedWork(
        sym: a['sym']!,
        item: a['item']!,
        task: a['task']!,
        qty: a['qty']!,
        unit: a['unit']!,
        judge: judge(),
        shelf: a['shelf']!,
      ),
      LogKind.storedWorkDone => log.storedWorkDone(
        sym: a['sym']!,
        item: a['item']!,
        task: a['task']!,
        qty: a['qty']!,
        unit: a['unit']!,
        judge: judge(),
        shelf: a['shelf']!,
      ),
      LogKind.storedPurchase => log.storedPurchase(
        sym: a['sym']!,
        item: a['item']!,
        qty: a['qty']!,
        unit: a['unit']!,
        judge: judge(),
        shelf: a['shelf']!,
      ),
      LogKind.storedItem => log.storedItem(
        shelf: a['shelf']!,
        item: a['item']!,
        qty: a['qty']!,
        unit: a['unit']!,
      ),
      LogKind.inspected => log.inspected(
        code: a['code']!,
        name: a['name']!,
        count: a['count']!,
      ),
      LogKind.inspectedWithIssue => log.inspectedWithIssue(
        code: a['code']!,
        name: a['name']!,
        count: a['count']!,
        issues: a['issues']!,
      ),
      LogKind.failed => log.failed(sym: a['sym']!),
    };
  }
}
