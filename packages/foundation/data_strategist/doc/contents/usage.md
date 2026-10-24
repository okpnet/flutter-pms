# data_strategist

データ取得の抽象化を提供します。`IDataRepository` を実装したレポジトリを `QueryState` へ渡し、`state.facade.execute(PredicateModel(...))` で値を取得します。

```dart
import 'package:data_strategist/lib.dart';

final state = QueryState<List<Item>>(
  expressionVisitorType: ExpressionVisitorType.list,
  repository: ItemRepository(),
);
final items = await state.facade.execute(PredicateModel(take: state.fetchLimit, skip: 0));
```
