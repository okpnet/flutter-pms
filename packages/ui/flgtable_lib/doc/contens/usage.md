# flgtable_lib の使い方

```dart
import 'package:flgtable_lib/flgtable_lib.dart';

// 祖先に ProviderScope が必要(ログは loggerProvider 経由)
FlgTable<User>(
  columns: [
    ColumnDefinition<User>(key: 'name', label: '名前', getter: (u) => u.name),
    ColumnDefinition<User>(
      key: 'age',
      label: '年齢',
      getter: (u) => u.age.toString(),
      setter: (u, v) => int.tryParse(v) != null, // 定義のみ(編集UIは未実装)
    ),
  ],
  items: users, // または loader: (query) async => LoadResult(...)
)
```

- 列幅 `width` 未指定は20文字分。`TableConfig(rowHeight: ...)` で行高を指定。
- セル表示は `CellRenderer<T>` 実装または `BuilderCellRenderer` を `renderer:` に渡す。
- 取得デリゲートが例外を投げたセルは `defaultValue` を表示する。
