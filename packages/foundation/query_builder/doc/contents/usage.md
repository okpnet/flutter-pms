# query_builder の使い方(PostGraphile)

```dart
final filter = PostgraphileExpressionBuilder<Map<String, dynamic>>();
final sort = SortPostgraphileExpressionBuilder<Map<String, dynamic>>();

final expression = AndExpression([
  GreaterExpression(NameFieldExpression('age'), ValueExpression(20)),
  StartWithExpression(NameFieldExpression('office||name'), ValueExpression('E')),
]);

// {filter: {and: [{age: {greaterThan: 20}}, {office||name: {startsWith: E}}]}}
final flat = filter.build(expression)({})['filter'] as Map<String, dynamic>;

// 関連をまたぐキーを入れ子の Filter へ展開する(pms_graphql。画面ごとの対応表 xxxFilterSpec)
final nested = FlatFilterConverter(OfficePageFilterSpec.spec)
    .convertTree(flat, variables: {'languageCodeId': languageCodeId});

// {orderBy: [UPDATE_AT_DESC, NAME_ASC]}
final order = sort.build(SortListExpression(sortOrderList: [
  SortNameFieldExpression('updateAt', isDesc: true),
  SortNameFieldExpression('name'),
]))({});
```

- 値の`DateTime`・`BigInt`は JSON に載る形(文字列)にする。
- `like`は`includes`(`%`は付けない)。大文字小文字を区別しない検索が必要になったら`includesInsensitive`を追加する。
