import 'dart:typed_data';

import 'package:flutter/services.dart' show AssetBundle, rootBundle;

/// PDF に埋め込むフォント(TrueType のバイト列)。日本語の本文には、BIZ UDP 明朝(SIL Open Font License 1.1)を同梱している。
class PdfFonts {
  const PdfFonts({required this.regular, required this.bold});

  final Uint8List regular;
  final Uint8List bold;
}

const _regularAsset = 'packages/markdown_pdf/assets/fonts/BIZUDPMincho-Regular.ttf';
const _boldAsset = 'packages/markdown_pdf/assets/fonts/BIZUDPMincho-Bold.ttf';

/// 同梱の BIZ UDP 明朝(標準・太字)を読み込む。アプリの起動後に 1 回読み、使い回す。
Future<PdfFonts> loadBundledPdfFonts({AssetBundle? bundle}) async {
  final b = bundle ?? rootBundle;
  final regular = await b.load(_regularAsset);
  final bold = await b.load(_boldAsset);
  return PdfFonts(
    regular: regular.buffer.asUint8List(regular.offsetInBytes, regular.lengthInBytes),
    bold: bold.buffer.asUint8List(bold.offsetInBytes, bold.lengthInBytes),
  );
}
