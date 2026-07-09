import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:undo_redo/lib.dart';

void main() {
  group('command test', () {
    test('addUndo test', () {
      dynamic object = {'name': 'test1', 'id': 5};
      print('1 ${object}');
      final stack = UndoStack();

      //基
      stack.push(
        ValueUndoCommand(
          currentValue: object['id'],
          valueToApply: 1,
          execute: (t) => object['id'] = t,
        ),
      );
      print('2 ${object}');
      stack.push(
        ValueUndoCommand(
          currentValue: object['name'],
          valueToApply: 'test2',
          execute: (t) => object['name'] = t,
        ),
      );
      print('3 ${object}');
      stack.undo(); //test1
      print('4 ${object}');
      stack.redo(); //test2
      print('5 ${object}');
      expect(object['name'], equals('test2'));
    });
    test('executeAdd test', () {});
    test('map test', () {});
  });
  test('provider', () {});
  test('adds one to input values', () {});
}
