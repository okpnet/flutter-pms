# query_builder

検索条件(`Expression`)と並び順(`SortExpression`)を組み立て、実行手段ごとの形に変換するライブラリです。

- 変換先: リスト(Dartの関数)・SQL・GraphQL(Hasura形式)・PostGraphile(connection-filter形式)
- 1行で読み込む: `import 'package:query_builder/query_builder.dart';`
- 使い方: [doc/contents/usage.md](doc/contents/usage.md)
- 構成・規則: [CLAUDE.md](CLAUDE.md)
