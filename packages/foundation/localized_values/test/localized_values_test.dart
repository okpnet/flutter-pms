import 'dart:convert';

import 'package:localized_values/localized_values.dart';
import 'package:test/test.dart';

void main() {
  group('LocalizedValues.resolve', () {
    test('指定の言語があればそれを使う', () {
      final v = LocalizedValues({'ja': 'キログラム', 'en': 'kilogram'});
      expect(v.resolve('en'), 'kilogram');
    });

    test('指定の言語が無ければ ja に代替する', () {
      final v = LocalizedValues({'ja': 'キログラム'});
      expect(v.resolve('en'), 'キログラム');
    });

    test('空文字・空白だけは未入力として代替する', () {
      final v = LocalizedValues({'ja': 'キログラム', 'en': '  '});
      expect(v.resolve('en'), 'キログラム');
    });

    test('ja が無ければ入っている言語の先頭(渡された順)に代替する', () {
      final v = LocalizedValues({'de': '', 'fr': 'kilogramme', 'en': 'kilogram'});
      expect(v.resolve('ja'), 'kilogramme');
    });

    test('ja が先に無くても、他の言語だけで表示できる', () {
      final v = LocalizedValues({'en': 'kilogram'});
      expect(v.resolve('ja'), 'kilogram');
      expect(v.hasAnyValue, isTrue);
    });

    test('代替の言語を変えられる', () {
      final v = LocalizedValues({'ja': 'キロ', 'en': 'kilo'});
      expect(v.resolve('fr', fallbackLanguage: 'en'), 'kilo');
    });

    test('どれも未入力なら空文字', () {
      final v = LocalizedValues({'ja': '', 'en': null});
      expect(v.resolve('ja'), '');
      expect(v.hasAnyValue, isFalse);
      expect(LocalizedValues.empty.resolve('ja'), '');
    });

    test('言語コードは大文字小文字を区別しない', () {
      final v = LocalizedValues({'JA': 'キロ'});
      expect(v.exact('ja'), 'キロ');
      expect(v.resolve('Ja'), 'キロ');
    });

    test('exact は代替しない', () {
      final v = LocalizedValues({'ja': 'キロ'});
      expect(v.exact('en'), isNull);
    });

    test('toJson', () {
      expect(LocalizedValues({'ja': 'a'}).toJson(), {
        'values': {'ja': 'a'},
      });
    });
  });

  group('LocalizedValues.fromDictionary', () {
    test('言語を絞った問い合わせ(言語のコードなし)は、絞った言語の値になる', () {
      final d = _Dictionary([_Node('キロ')]);
      final v = LocalizedValues.fromDictionary(d);
      expect(v.values, {'ja': 'キロ'});
      expect(v.resolve('en'), 'キロ');
    });

    test('queriedLanguage を変えられる', () {
      final v = LocalizedValues.fromDictionary(
        _Dictionary([_Node('kilo')]),
        queriedLanguage: 'en',
      );
      expect(v.values, {'en': 'kilo'});
    });

    test('言語のコードがあれば、言語ごとの値になり、代替できる', () {
      final d = _Dictionary([_Node('キロ', code: 'JA'), _Node('', code: 'en')]);
      final v = LocalizedValues.fromDictionary(d);
      expect(v.values, {'ja': 'キロ', 'en': ''});
      expect(v.resolve('en'), 'キロ');
    });

    test('辞書が無い・値が無いときは空', () {
      expect(LocalizedValues.fromDictionary(null).resolve('ja'), '');
      expect(LocalizedValues.fromDictionary(_Dictionary([])).resolve('ja'), '');
    });

    test('同じ言語が複数あれば、先のものを使う', () {
      final d = _Dictionary([_Node('a', code: 'ja'), _Node('b', code: 'ja')]);
      expect(LocalizedValues.fromDictionary(d).exact('ja'), 'a');
    });
  });

  group('LocalizedValuesChange.diff', () {
    final original = LocalizedValues({'ja': 'キロ', 'en': ''});

    test('変わらなければ空', () {
      final c = LocalizedValuesChange.diff(
        original,
        LocalizedValues({'ja': 'キロ'}),
      );
      expect(c.isEmpty, isTrue);
      expect(c.toArgument(), isNull);
    });

    test('変わった言語だけを送る(他の言語は送らない)', () {
      final c = LocalizedValuesChange.diff(
        original,
        LocalizedValues({'ja': 'キロ', 'en': 'kilo'}),
      );
      expect(c.values, {'en': 'kilo'});
      expect(jsonDecode(c.toArgument()!), {'en': 'kilo'});
    });

    test('EN の利用者が ja の無い行を読んで ja を触らずに en だけ変える', () {
      final c = LocalizedValuesChange.diff(
        LocalizedValues({'en': 'a'}),
        LocalizedValues({'en': 'b'}),
      );
      expect(c.values, {'en': 'b'});
    });

    test('元が未入力で、編集後も未入力なら送らない', () {
      final c = LocalizedValuesChange.diff(
        original,
        LocalizedValues({'ja': 'キロ', 'en': ' '}),
      );
      expect(c.isEmpty, isTrue);
    });

    test('値を消すと空文字を送る', () {
      final c = LocalizedValuesChange.diff(
        original,
        LocalizedValues({'ja': ''}),
      );
      expect(c.values, {'ja': ''});
    });

    test('編集後に無くなった言語は、空文字で消す', () {
      final c = LocalizedValuesChange.diff(
        original,
        LocalizedValues({'en': 'x'}),
      );
      expect(c.values, {'ja': '', 'en': 'x'});
    });

    test('新規は、入力した言語だけを送る', () {
      final c = LocalizedValuesChange.diff(
        LocalizedValues.empty,
        LocalizedValues({'en': 'kilo', 'ja': ''}),
      );
      expect(c.values, {'en': 'kilo'});
    });
  });

  group('LocalizedValuesChange.leavesAnyValue', () {
    final original = LocalizedValues({'ja': 'キロ'});

    test('全部を空にすると、値が残らない(名称は APL02 になる)', () {
      final c = LocalizedValuesChange.diff(
        original,
        LocalizedValues({'ja': ''}),
      );
      expect(c.leavesAnyValue(original), isFalse);
    });

    test('ja を消しても en があれば残る', () {
      final c = LocalizedValuesChange.diff(
        original,
        LocalizedValues({'ja': '', 'en': 'kilo'}),
      );
      expect(c.leavesAnyValue(original), isTrue);
    });

    test('新規で値が無い', () {
      final c = LocalizedValuesChange.diff(
        LocalizedValues.empty,
        LocalizedValues.empty,
      );
      expect(c.leavesAnyValue(LocalizedValues.empty), isFalse);
    });
  });
}
// 生成モデルの形(`value.nodes[].dictionaryValue`)の代役。
class _Dictionary {
  _Dictionary(List<_Node> nodes) : value = _Nodes(nodes);
  final _Nodes value;
}

class _Nodes {
  _Nodes(this.nodes);
  final List<_Node> nodes;
}

class _Node {
  _Node(this.dictionaryValue, {String? code})
    : _code = code == null ? null : _Code(code);
  final String dictionaryValue;
  final _Code? _code;
  // 言語のコードを取る問い合わせのときだけ、このフィールドがある
  dynamic get sharedLanguageCodeBySharedLanguageCodeId => _code ?? (throw NoSuchMethodError.withInvocation(this, Invocation.getter(#sharedLanguageCodeBySharedLanguageCodeId)));
}

class _Code {
  _Code(this.code);
  final String code;
}
