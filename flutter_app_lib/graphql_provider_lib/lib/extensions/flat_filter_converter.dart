// flat_filter_converter.dart
//
// 要件0050: 検索条件を、平坦なMap(キーは平坦化キー)から、PostGraphileの
// connection-filter(`<テーブル>Filter`)の入れ子のMapへ展開するコンバーター。
//
// 呼び出し側は、一覧(TrinaGrid)の列と同じ平坦化キーで検索条件を渡す。
//   { 'address||zipCode': {'startsWith': '100'}, 'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue': {'includes': '東京'} }
// 値はconnection-filterの演算子のMap(`equalTo`・`includes`・`in`等)で、そのまま葉へ渡す。
//
// 展開に使う対応(FlatFilterSpec)は、画面のGraphQL(lib/graphql/<画面>/<画面>_read.graphql)の
// 選択経路から`dart run tool/gen_filter_spec.dart`が生成する(lib/contents/<画面>_filter_spec.dart)。
//   - 1対1の関連: 前方の関連フィールド(例: `infoAddressByInfoAddressId`)で辿る。
//   - 1対多の関連: `some`で辿る(子のいずれかが一致する親を取得する)。
//   - 呼称(shared_appellations)の辞書の値など、GraphQL側で変数による`condition`が付いた関連は、
//     同じ条件(例: `sharedLanguageCodeId = $languageCodeId`)を`some`の中へ加える。
//     この変数の値は[FlatFilterConverter.convert]の`variables`で渡す。
//
// 結果は`Input$<テーブル>Filter.fromJson`へそのまま渡せる。依存: Dart標準のみ。

import 'nested_map_flattener.dart';

/// 検索条件の展開で辿る1つの関連。
class FilterStep {
  /// GraphQLの関連フィールド名(Filter型の同名のフィールドでもある)。
  final String field;

  /// 1対多(`some`で辿る)かどうか。
  final bool many;

  /// 1対多の関連に付く固定の条件。列名 -> 変数名(`$`なし)。
  /// 例: `{'sharedLanguageCodeId': 'languageCodeId'}`
  final Map<String, String> conditions;

  const FilterStep(this.field) : many = false, conditions = const {};
  const FilterStep.many(this.field, [this.conditions = const {}]) : many = true;
}

/// 平坦化キー1つの展開先: 関連の経路([steps])と、その先の列([column])。
class FlatFilterPath {
  final List<FilterStep> steps;
  final String column;
  const FlatFilterPath(this.steps, this.column);
}

/// 1つの画面の対応表。[filterType]は最上位の`<テーブル>Filter`型名。
class FlatFilterSpec {
  final String filterType;
  final Map<String, FlatFilterPath> paths;
  const FlatFilterSpec(this.filterType, this.paths);
}

/// 平坦な検索条件のMapを、入れ子のFilterのMapへ展開する。
class FlatFilterConverter {
  final FlatFilterSpec spec;
  final String separator;
  const FlatFilterConverter(this.spec, {this.separator = kFlatKeySeparator});

  /// [flat]を入れ子のFilterのMapへ展開する。
  ///
  /// - 値がnullまたは空のMapの条件は、条件なしとして無視する。
  /// - [spec]に無いキー、演算子のMapでない値は[ArgumentError]とする。
  /// - 経路に条件の変数(`languageCodeId`等)が必要なのに[variables]に無い場合は[ArgumentError]とする。
  /// - 条件が1つも無ければ空のMap(絞り込みなし)を返す。
  Map<String, dynamic> convert(
    Map<String, dynamic> flat, {
    Map<String, dynamic> variables = const {},
  }) {
    final root = <String, dynamic>{};
    for (final entry in flat.entries) {
      final path = spec.paths[entry.key];
      if (path == null) {
        throw ArgumentError.value(
          entry.key,
          'flat',
          '${spec.filterType}へ展開できないキーです(画面のGraphQLに無い列、またはFilterに無い列)',
        );
      }
      final operators = entry.value;
      if (operators == null) continue;
      if (operators is! Map) {
        throw ArgumentError.value(
          operators,
          'flat[${entry.key}]',
          'connection-filterの演算子のMap(例: {"equalTo": 値})で指定してください',
        );
      }
      if (operators.isEmpty) continue;

      var node = root;
      for (final step in path.steps) {
        node = _child(node, step.field);
        if (step.many) {
          node = _child(node, 'some');
          for (final cond in step.conditions.entries) {
            if (!variables.containsKey(cond.value)) {
              throw ArgumentError.value(
                cond.value,
                'variables',
                '${entry.key}の検索には変数${cond.value}が必要です',
              );
            }
            // 同じ`some`に複数の列の条件が載るとき、同一の固定条件は1回だけ加える。
            final fixed = {'equalTo': variables[cond.value]};
            if (node[cond.key] is Map &&
                (node[cond.key] as Map)['equalTo'] == fixed['equalTo']) {
              continue;
            }
            _put(node, cond.key, fixed);
          }
        }
      }
      _put(node, path.column, Map<String, dynamic>.from(operators));
    }
    return root;
  }

  Map<String, dynamic> _child(Map<String, dynamic> parent, String key) {
    final existing = parent[key];
    if (existing is Map<String, dynamic>) return existing;
    final created = <String, dynamic>{};
    parent[key] = created;
    return created;
  }

  /// 同じ列に別の値が既にある場合(条件の列と検索の列の重複)は、両方を`and`で結ぶ。
  void _put(
    Map<String, dynamic> node,
    String column,
    Map<String, dynamic> value,
  ) {
    if (!node.containsKey(column)) {
      node[column] = value;
      return;
    }
    final and = (node['and'] as List?) ?? <dynamic>[];
    and.add({column: value});
    node['and'] = and;
  }
}
