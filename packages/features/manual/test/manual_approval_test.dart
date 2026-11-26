import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:manual/manual.dart';
import 'package:markdown_pdf/markdown_pdf.dart';

class _FakeSaver implements IManualFileSaver {
  String? name;
  Uint8List? bytes;
  bool result = true;

  @override
  Future<bool> save(String filename, Uint8List b) async {
    name = filename;
    bytes = b;
    return result;
  }
}

ApprovalStepInfo _approved() => ApprovalStepInfo(
      approved: true,
      rejected: false,
      pending: false,
      stampLabelJa: '承認',
      stampLabelEn: 'Approval',
      priority: 1,
      approvedAt: DateTime(2026, 11, 3),
      approvedStaff: '田中 太郎',
    );

const _pendingStep = ApprovalStepInfo(
  approved: false,
  rejected: false,
  pending: true,
  stampLabelJa: '承認待ち',
  stampLabelEn: 'Pending',
  priority: 2,
);

Widget _app(
  Map<String, ManualApproval> approvals, {
  String initial = '/manual?id=m1',
  _FakeSaver? saver,
}) {
  final router = GoRouter(initialLocation: initial, routes: const ManualModule().routes);
  return ProviderScope(
    overrides: [
      manualRepositoryProvider.overrideWithValue(InMemoryManualRepository()),
      manualCanEditProvider.overrideWithValue(false),
      manualEditorNameProvider.overrideWithValue('テスト'),
      manualApprovalSourceProvider.overrideWithValue(InMemoryManualApprovalSource(approvals)),
      manualPdfFontsProvider.overrideWith((ref) async => PdfFonts(
            regular: Uint8List.fromList(File('../../foundation/markdown_pdf/assets/fonts/BIZUDPMincho-Regular.ttf').readAsBytesSync()),
            bold: Uint8List.fromList(File('../../foundation/markdown_pdf/assets/fonts/BIZUDPMincho-Bold.ttf').readAsBytesSync()),
          )),
      manualClockProvider.overrideWithValue(() => DateTime(2026, 11, 21)),
      if (saver != null) manualFileSaverProvider.overrideWithValue(saver),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _pump(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1280, 1000));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('承認の情報が無い文書は、帯もスタンプも出さずに本文を読める', (tester) async {
    await _pump(tester, _app({}));
    expect(find.byKey(const Key('manual-approval-pending')), findsNothing);
    expect(find.byKey(const Key('manual-approval-stamps')), findsNothing);
    expect(find.byKey(const Key('manual-meta')), findsOneWidget);
  });

  testWidgets('承認待ち(読める人): 帯と、承認済み・承認待ちのスタンプが出る', (tester) async {
    await _pump(
      tester,
      _app({
        'm1': ManualApproval(published: false, pending: true, steps: [_approved(), _pendingStep], statusLabel: '承認待ち'),
      }),
    );
    expect(find.byKey(const Key('manual-approval-pending')), findsOneWidget);
    expect(find.text('この文書は承認待ちです。承認されるまで、承認者と管理者だけが読めます。'), findsOneWidget);
    expect(find.byKey(const Key('manual-approval-stamps')), findsOneWidget);
    expect(find.bySemanticsLabel(RegExp('承認 2026/11/03')), findsOneWidget);
    expect(find.bySemanticsLabel(RegExp('承認待ち')), findsWidgets);
    expect(find.byKey(const Key('manual-meta')), findsOneWidget); // 本文は読める
  });

  testWidgets('承認済み: 帯は出ず、スタンプだけ出る', (tester) async {
    await _pump(tester, _app({'m1': ManualApproval(steps: [_approved()], statusLabel: '承認')}));
    expect(find.byKey(const Key('manual-approval-pending')), findsNothing);
    expect(find.byKey(const Key('manual-approval-stamps')), findsOneWidget);
  });

  testWidgets('読めない(承認待ちの該当者でない人): 本文の代わりに案内を出す', (tester) async {
    await _pump(
      tester,
      _app({
        'm1': const ManualApproval(published: false, pending: true, readable: false, steps: [_pendingStep]),
      }),
    );
    expect(find.byKey(const Key('manual-approval-unreadable')), findsOneWidget);
    expect(find.byKey(const Key('manual-meta')), findsNothing);
  });

  testWidgets('子ページには、スタンプではなく「承認はルートにある」の注記を出す', (tester) async {
    await _pump(
      tester,
      _app({'m1': ManualApproval(steps: [_approved()], statusLabel: '承認')}, initial: '/manual?id=m4'),
    );
    expect(find.byKey(const Key('manual-approval-stamps')), findsNothing);
    expect(find.byKey(const Key('manual-approval-root-note')), findsOneWidget);
  });

  testWidgets('PDF: このページを保存できる(%PDF。ファイル名はページ名)', (tester) async {
    final saver = _FakeSaver();
    await _pump(tester, _app({'m1': ManualApproval(steps: [_approved()], statusLabel: '承認')}, saver: saver));
    await tester.tap(find.byKey(const Key('manual-pdf')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-pdf-save')));
    for (var i = 0; i < 200 && saver.bytes == null; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
    await tester.pump(const Duration(milliseconds: 100));
    expect(saver.name, '品質マニュアル.pdf');
    expect(latin1.decode(saver.bytes!.sublist(0, 5)), '%PDF-');
    expect(find.text('保存しました。'), findsOneWidget);
  });

  testWidgets('PDF: 文書全体・保存を取り消したら案内を出す', (tester) async {
    final saver = _FakeSaver()..result = false;
    await _pump(tester, _app({}, saver: saver));
    await tester.tap(find.byKey(const Key('manual-pdf')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('文書全体'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-pdf-save')));
    for (var i = 0; i < 200 && saver.bytes == null; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
    await tester.pump(const Duration(milliseconds: 100));
    expect(saver.bytes, isNotNull);
    expect(find.text('保存を取り消しました。'), findsOneWidget);
  });
}
