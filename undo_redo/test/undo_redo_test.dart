import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:undo_redo/lib.dart';

void main() {
  group('command test', () {
    test('addUndo test', () {
      dynamic object = {'name': 'test1', 'id': 5};
      final stack = Stack(
        Command(jsonEncode(object), (t) => object = jsonDecode(t)),
      );
      //基
      stack.addUndo(Command(1, (t) => object['id'] = t));
      object['id'] = 1;
      print(object);
      object['name'] = 'test2';
      stack.undo(); //5
      print(object);
      stack.redo(); //1
      print(object);
      expect(object['id'], equals(1));
    });
    test('executeAdd test', () {
      dynamic object = {'name': 'test1', 'id': 5};
      final stack = Stack(
        Command(jsonEncode(object), (t) => object = jsonDecode(t)),
      );
      print('1 $object');
      //基
      stack.executeAdd(Command(1, (t) => object['id'] = t));
      print('2 $object');
      object['name'] = 'test2';
      print('3 $object');
      stack.executeAdd(Command(2, (t) => object['id'] = t));
      print('4 $object');
      stack.executeAdd(Command(3, (t) => object['id'] = t));
      print('5 $object');
      stack.undo(); //2
      print('6 $object');
      stack.undo(); //1
      print('7 $object');
      stack.redo(); //2
      expect(object['id'], equals(2));
    });
    test('map test', () {
      dynamic object = {'name': 'test1', 'id': 5};
      print(object);
      final setFunc = (String t) =>
          object = jsonEncode(object) == t ? object : jsonDecode(t);
      final stack = Stack(Command(jsonEncode(object), setFunc));

      object['id'] = 1;
      print(object);
      //基
      stack.addUndo(Command(jsonEncode(object), setFunc));

      object['name'] = 'test2';
      print(object);
      //基
      stack.addUndo(Command(jsonEncode(object), setFunc));
      stack.undo(); //test1
      print(object);
      stack.redo(); //test2
      print(object);
      expect(object['name'], equals('test2'));
    });
  });
  test('provider', () {
    dynamic object = {'name': 'test1', 'id': 5};
  });
  test('adds one to input values', () {});
}
