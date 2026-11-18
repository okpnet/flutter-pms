import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// 編集画面の入力欄を、項目名で探す。項目名は、入力欄の上に出す(枠の中のラベルではない)ため、
/// 項目名の文字を含む、いちばん近い縦の並び(項目名 + 入力欄)の中の入力欄を探す。
Finder fieldByLabel(String label) => find.descendant(
  of: find.ancestor(of: find.text(label), matching: find.byType(Column)).first,
  matching: find.byType(TextField),
);
