import 'dart:async';
import 'dart:convert';

import 'package:markdown_ast/markdown_ast.dart';
import 'package:markdown_stream/markdown_stream.dart';
import 'package:test/test.dart';

void main() {
  group('MarkdownStreamReader', () {
    const reader = MarkdownStreamReader();

    test('UTF-8 を読む。文字の途中で区切られたチャンクでも壊れない', () async {
      final bytes = utf8.encode('## 見出し\n\n日本語の本文 😀');
      // 1 バイトずつ流す(多バイト文字の途中で区切る)
      final stream = Stream<List<int>>.fromIterable([for (final b in bytes) [b]]);
      expect(await reader.readString(stream), '## 見出し\n\n日本語の本文 😀');
    });

    test('先頭の BOM を取り除き、改行は LF にそろえる', () async {
      final bytes = [0xEF, 0xBB, 0xBF, ...utf8.encode('A\r\nB\rC\n')];
      expect(await reader.readBytes(bytes), 'A\nB\nC\n');
    });

    test('構文木のブロックとして読める', () async {
      final blocks = await reader.readBlocks(Stream.value(utf8.encode('## A\n\n- x\n- y')));
      expect(blocks.first, isA<MdHeading>());
      expect(blocks.last, isA<MdList>());
    });

    test('大きさの上限を超えたら tooLarge(読み切る前に止める)', () async {
      const small = MarkdownStreamReader(maxBytes: 10);
      await expectLater(
        small.readString(Stream.fromIterable([utf8.encode('12345'), utf8.encode('678901')])),
        throwsA(isA<MarkdownStreamException>().having((e) => e.failure, 'failure', MarkdownStreamFailure.tooLarge)),
      );
      expect(await small.readBytes(utf8.encode('1234567890')), '1234567890'); // ちょうど上限は通る
    });

    test('UTF-8 として読めないときは invalidEncoding。allowMalformed なら置き換えて続ける', () async {
      final bad = [0x41, 0xFF, 0x42];
      await expectLater(
        reader.readBytes(bad),
        throwsA(isA<MarkdownStreamException>().having((e) => e.failure, 'failure', MarkdownStreamFailure.invalidEncoding)),
      );
      expect(await const MarkdownStreamReader(allowMalformed: true).readBytes(bad), 'A�B');
    });

    test('ストリームの失敗はそのまま投げる', () async {
      final stream = Stream<List<int>>.error(StateError('disk'));
      await expectLater(reader.readString(stream), throwsStateError);
    });

    test('空のストリームは空の文字', () async {
      expect(await reader.readString(const Stream.empty()), '');
    });
  });

  group('MarkdownStreamWriter', () {
    test('UTF-8 で書く。末尾に改行を 1 つ付ける(既にあれば付けない)', () async {
      const w = MarkdownStreamWriter();
      expect(utf8.decode(await w.toBytes('A\n\nB')), 'A\n\nB\n');
      expect(utf8.decode(await w.toBytes('A\n')), 'A\n');
      expect(utf8.decode(await w.toBytes('')), '');
      expect(utf8.decode(await const MarkdownStreamWriter(ensureTrailingNewline: false).toBytes('A')), 'A');
    });

    test('改行コードと BOM を選べる', () async {
      const w = MarkdownStreamWriter(lineEnding: '\r\n', bom: true);
      final bytes = await w.toBytes('A\nB');
      expect(bytes.sublist(0, 3), [0xEF, 0xBB, 0xBF]);
      expect(utf8.decode(bytes.sublist(3)), 'A\r\nB\r\n');
    });

    test('指定の文字数で区切って流し、つなぐと元に戻る(サロゲートペアの途中では区切らない)', () async {
      const w = MarkdownStreamWriter(chunkSize: 3, ensureTrailingNewline: false);
      const text = 'ab😀c😀😀def';
      final chunks = await w.encode(text).toList();
      expect(chunks.length, greaterThan(1));
      // どのチャンクも、単独で UTF-8 として正しい
      for (final c in chunks) {
        expect(() => utf8.decode(c), returnsNormally);
      }
      expect(utf8.decode(chunks.expand((c) => c).toList()), text);
    });

    test('シンクへ書く。閉じるかどうかを選べる', () async {
      final controller = StreamController<List<int>>();
      final received = <int>[];
      final done = controller.stream.listen(received.addAll).asFuture<void>();
      await const MarkdownStreamWriter().write(controller, 'x');
      await done; // 閉じたので完了する
      expect(utf8.decode(received), 'x\n');

      final c2 = StreamController<List<int>>();
      final r2 = <int>[];
      c2.stream.listen(r2.addAll);
      await const MarkdownStreamWriter().write(c2, 'y', close: false);
      expect(c2.isClosed, isFalse);
      await c2.close();
    });
  });

  test('書いたものを読むと、同じ内容(往復)。末尾の改行だけ付く', () async {
    const md = '## 見出し\n\n本文 [[ページ|表示]]\n\n```\n\ncode\n```';
    final bytes = await const MarkdownStreamWriter(chunkSize: 5).toBytes(md);
    final back = await const MarkdownStreamReader().readBytes(bytes);
    expect(back, '$md\n');
  });
}
