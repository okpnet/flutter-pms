import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:markdown_ast/markdown_ast.dart';

/// ストリームの Markdown の読み書きの失敗の種類。
enum MarkdownStreamFailure {
  /// 大きすぎる([MarkdownStreamReader.maxBytes] を超えた)。
  tooLarge,

  /// UTF-8 として読めない(不正なバイト列)。
  invalidEncoding,
}

class MarkdownStreamException implements Exception {
  const MarkdownStreamException(this.failure, this.message);

  final MarkdownStreamFailure failure;

  /// 開発者向けの説明(利用者に見せる文言ではない)。
  final String message;

  @override
  String toString() => 'MarkdownStreamException(${failure.name}: $message)';
}

/// バイトのストリームから Markdown を読む(ファイル・ネットワーク・保管庫のストリーム)。
///
/// UTF-8 として読み、先頭の BOM を取り除き、改行(CRLF・CR)を LF にそろえる。大きさの上限を超えたら、読み切る前に
/// [MarkdownStreamException]([MarkdownStreamFailure.tooLarge])で止める。UTF-8 として読めないときは
/// [MarkdownStreamFailure.invalidEncoding]([allowMalformed] が true のときは、読めない所を `�` にして続ける)。
///
/// パターン: Adapter(ストリーム → Markdown の文字・構文木)
class MarkdownStreamReader {
  const MarkdownStreamReader({this.maxBytes = 10 * 1024 * 1024, this.allowMalformed = false});

  /// 読み込める最大のバイト数(既定 10MB)。
  final int maxBytes;
  final bool allowMalformed;

  /// ストリームを読み切って、Markdown の文字にする。
  Future<String> readString(Stream<List<int>> stream) async {
    var total = 0;
    final limited = stream.map((chunk) {
      total += chunk.length;
      if (total > maxBytes) {
        throw MarkdownStreamException(MarkdownStreamFailure.tooLarge, '$total bytes exceeds $maxBytes');
      }
      return chunk;
    });
    final buffer = StringBuffer();
    try {
      await for (final s in limited.transform(Utf8Decoder(allowMalformed: allowMalformed))) {
        buffer.write(s);
      }
    } on FormatException catch (e) {
      throw MarkdownStreamException(MarkdownStreamFailure.invalidEncoding, e.message);
    }
    var text = buffer.toString();
    if (text.startsWith('﻿')) text = text.substring(1);
    return text.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
  }

  /// ストリームを読み切って、構文木のブロックにする。
  Future<List<MdBlock>> readBlocks(Stream<List<int>> stream) async => MarkdownParser.parse(await readString(stream));

  /// バイト列から読む(メモリ上のファイルの内容など)。
  Future<String> readBytes(List<int> bytes) => readString(Stream.value(bytes));
}

/// Markdown をバイトのストリームへ書く。
///
/// UTF-8 で、[chunkSize] 文字ごとに区切って流す(文字の途中・サロゲートペアの途中では区切らない)。改行は [lineEnding] にそろえ、
/// [ensureTrailingNewline] なら末尾に改行を 1 つ付ける。[bom] が true なら、先頭に BOM を付ける。
///
/// パターン: Adapter(Markdown の文字 → ストリーム)
class MarkdownStreamWriter {
  const MarkdownStreamWriter({
    this.chunkSize = 64 * 1024,
    this.lineEnding = '\n',
    this.bom = false,
    this.ensureTrailingNewline = true,
  }) : assert(chunkSize > 0);

  final int chunkSize;
  final String lineEnding;
  final bool bom;
  final bool ensureTrailingNewline;

  String _prepare(String md) {
    var s = md.replaceAll('\r\n', '\n').replaceAll('\r', '\n');
    if (ensureTrailingNewline && s.isNotEmpty && !s.endsWith('\n')) s = '$s\n';
    if (lineEnding != '\n') s = s.replaceAll('\n', lineEnding);
    return s;
  }

  /// バイトのストリームにする。
  Stream<List<int>> encode(String md) async* {
    final s = _prepare(md);
    if (bom) yield const [0xEF, 0xBB, 0xBF];
    var i = 0;
    while (i < s.length) {
      var end = i + chunkSize;
      if (end >= s.length) {
        end = s.length;
      } else if (_isHighSurrogate(s.codeUnitAt(end - 1))) {
        end--; // サロゲートペアの途中では区切らない
      }
      if (end <= i) end = i + 1;
      yield utf8.encode(s.substring(i, end));
      i = end;
    }
  }

  static bool _isHighSurrogate(int unit) => unit >= 0xD800 && unit <= 0xDBFF;

  /// [sink] へ書く。[close] が true のとき、書き終えたら閉じる。
  Future<void> write(StreamSink<List<int>> sink, String md, {bool close = true}) async {
    await sink.addStream(encode(md));
    if (close) await sink.close();
  }

  /// 全体をバイト列にする。
  Future<Uint8List> toBytes(String md) async {
    final out = BytesBuilder(copy: false);
    await for (final chunk in encode(md)) {
      out.add(chunk);
    }
    return out.takeBytes();
  }
}
