// 平坦なMap -> 入れ子のFilter(FlatFilterConverter)の単体テスト。
// 経路の展開・some・条件の変数・エラーを検証する。対応表と生成モデルの往復は各モデルパッケージのテストで行う。

import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql/pms_graphql.dart';

void main() {
  group('FlatFilterConverter(単体)', () {
    const spec = FlatFilterSpec('XFilter', {
      'code': FlatFilterPath([], 'code'),
      'name': FlatFilterPath([], 'name'),
      'address||zip': FlatFilterPath([FilterStep('addressByAddressId')], 'zip'),
      'address||city||name': FlatFilterPath([
        FilterStep('addressByAddressId'),
        FilterStep('cityByCityId'),
      ], 'name'),
      'labels||value||text': FlatFilterPath([
        FilterStep('labelByLabelId'),
        FilterStep.many('valuesByLabelId', {'languageId': 'languageCodeId'}),
      ], 'text'),
      'labels||value||note': FlatFilterPath([
        FilterStep('labelByLabelId'),
        FilterStep.many('valuesByLabelId', {'languageId': 'languageCodeId'}),
      ], 'note'),
    });
    const converter = FlatFilterConverter(spec);

    test('自テーブルの列は演算子のMapをそのまま渡す', () {
      expect(
        converter.convert({
          'code': {'equalTo': 'A'},
        }),
        {
          'code': {'equalTo': 'A'},
        },
      );
    });

    test('1対1の関連は前方の関連フィールドで辿り、同じ経路の条件は1つにまとまる', () {
      expect(
        converter.convert({
          'address||zip': {'startsWith': '100'},
          'address||city||name': {'includes': '千代田'},
        }),
        {
          'addressByAddressId': {
            'zip': {'startsWith': '100'},
            'cityByCityId': {
              'name': {'includes': '千代田'},
            },
          },
        },
      );
    });

    test('1対多はsomeで辿り、変数による条件を同じsomeの中へ加える', () {
      expect(
        converter.convert(
          {
            'labels||value||text': {'includes': '東京'},
            'labels||value||note': {'isNull': false},
          },
          variables: {'languageCodeId': 'lang-ja'},
        ),
        {
          'labelByLabelId': {
            'valuesByLabelId': {
              'some': {
                'languageId': {'equalTo': 'lang-ja'},
                'text': {'includes': '東京'},
                'note': {'isNull': false},
              },
            },
          },
        },
      );
    });

    test('nullまたは空の条件は無視し、条件が無ければ{and: []}を返す(空のMapはサーバーが拒否する)', () {
      const none = {'and': <dynamic>[]};
      expect(converter.convert({}), none);
      expect(
        converter.convert({'code': null, 'name': <String, dynamic>{}}),
        none,
      );
    });

    test('展開できないキーはArgumentError', () {
      expect(
        () => converter.convert({
          'unknown': {'equalTo': 1},
        }),
        throwsArgumentError,
      );
    });

    test('演算子のMapでない値はArgumentError', () {
      expect(() => converter.convert({'code': 'A'}), throwsArgumentError);
    });

    test('1対多の条件に必要な変数が無ければArgumentError', () {
      expect(
        () => converter.convert({
          'labels||value||text': {'includes': '東京'},
        }),
        throwsArgumentError,
      );
    });

    test('変換結果は呼び出し側のMapを書き換えない', () {
      final operators = <String, dynamic>{'equalTo': 'A'};
      final result = converter.convert({'code': operators});
      (result['code'] as Map)['equalTo'] = 'B';
      expect(operators['equalTo'], 'A');
    });
  });

}
