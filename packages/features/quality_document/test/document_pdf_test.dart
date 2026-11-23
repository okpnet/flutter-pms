import 'dart:io';
import 'dart:typed_data';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:markdown_pdf/markdown_pdf.dart';
import 'package:quality_document/quality_document.dart';

class _Saver implements IDocumentFileSaver {
  String? name;
  Uint8List? bytes;

  @override
  Future<bool> save(String filename, Uint8List bytes) async {
    name = filename;
    this.bytes = bytes;
    return true;
  }
}

class _Approval implements IDocumentApprovalSource {
  _Approval(this.approval);
  final DocumentApproval approval;

  @override
  Future<DocumentApproval> of(String contentId) async => approval;
}

PdfFonts _fonts() => PdfFonts(
  regular: Uint8List.fromList(File('../../foundation/markdown_pdf/assets/fonts/BIZUDPMincho-Regular.ttf').readAsBytesSync()),
  bold: Uint8List.fromList(File('../../foundation/markdown_pdf/assets/fonts/BIZUDPMincho-Bold.ttf').readAsBytesSync()),
);

Widget _app(_Saver saver, {DocumentApproval approval = DocumentApproval.none}) {
  final g = InMemoryDocumentBodyGateway(bodies: {'c1': const DocumentBody(contentId: 'c1', title: '適用範囲', markdown: '## 目的\n\nこの文書の目的。')});
  final router = GoRouter(initialLocation: '/quality-document/body?id=c1', routes: const QualityDocumentModule().routes);
  return ProviderScope(
    overrides: [
      documentBodyGatewayProvider.overrideWithValue(g),
      documentFileSaverProvider.overrideWithValue(saver),
      documentPdfFontsProvider.overrideWith((ref) async => _fonts()),
      documentApprovalSourceProvider.overrideWithValue(_Approval(approval)),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

void main() {
  testWidgets('PDF ボタンで、本文を PDF にして保存する(ファイル名は題名)', (tester) async {
    final saver = _Saver();
    await tester.binding.setSurfaceSize(const Size(1280, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(_app(saver));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('body-pdf')));
    await tester.runAsync(() async {
      for (var i = 0; i < 100 && saver.bytes == null; i++) {
        await Future<void>.delayed(const Duration(milliseconds: 100));
      }
    });
    await tester.pumpAndSettle();
    expect(saver.name, '適用範囲.pdf');
    expect(String.fromCharCodes(saver.bytes!.take(4)), '%PDF');
    expect(PdfSettingsMetadata.read(saver.bytes!), isNotNull); // 出力に使った設定がメタデータに残る
    expect(find.text('PDF を保存しました。'), findsOneWidget);
  });

  testWidgets('承認待ちの文書は帯を出し、読めないときは本文の代わりに案内を出す', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1280, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(_app(_Saver(), approval: const DocumentApproval(pending: true)));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('body-approval-pending')), findsOneWidget);
    expect(find.byKey(const Key('body-view')), findsOneWidget);

    await tester.pumpWidget(_app(_Saver(), approval: const DocumentApproval(pending: true, readable: false)));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('body-unreadable')), findsOneWidget);
    expect(find.byKey(const Key('body-view')), findsNothing);
  });
}
