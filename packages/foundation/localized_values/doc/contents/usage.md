# localized_values の使い方

言語別の値(呼称・文章・ラベル)を、画面と保存で扱う純 Dart の部品。DB の共通関数(`shared_appellation_save` など。`doc/query/20261116_0001_common_functions.sql`)の規則に合わせる。

```dart
import 'package:localized_values/localized_values.dart';

// 表示: 指定の言語 → ja → 入っている言語の先頭。空文字・空白だけは未入力として代替する。
final name = LocalizedValues({'en': 'kilogram'});
name.resolve('ja'); // 'kilogram'(ja が無くても、他の言語で表示できる)

// 保存: 読み込んだ値から変わった言語だけを送る(DB は渡した言語だけを入れ替える)。
final change = LocalizedValuesChange.diff(original, edited);
if (!change.leavesAnyValue(original)) { /* 名称は、いずれかの言語に値が必要(DB は APL02) */ }
final argument = change.toArgument(); // JSON の文字列。変わらなければ null(関数を呼ばない)
```

規則
1. 空文字と行なしは同じ「未入力」。
1. 値を消すと、空文字を送る(DB が値を空にする。行は残る)。
1. 言語コードは小文字にそろえる。
1. ja の必須は DB にも画面にも持たない。名称は「いずれかの言語に値がある」だけを検証する。
