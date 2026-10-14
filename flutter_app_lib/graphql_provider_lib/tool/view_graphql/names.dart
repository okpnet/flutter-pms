// view.yaml -> GraphQL変換の名前規則(PostGraphileのインフレクションに合わせる)。

String cap(String s) => s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
String lowerFirst(String s) => s.isEmpty ? s : s[0].toLowerCase() + s.substring(1);

/// snake_case -> camelCase(例: update_at -> updateAt、iso3166_3 -> iso31663)
String camel(String snake) {
  final p = snake.split('_');
  return p.first + p.skip(1).map(cap).join();
}

/// snake_case -> PascalCase(例: mstr_operation -> MstrOperation)
String pascal(String snake) => snake.split('_').map(cap).join();

/// PascalCase -> snake_case(例: OperationPage -> operation_page)
String snake(String pascalName) => pascalName
    .replaceAllMapped(RegExp(r'(?<!^)([A-Z])'), (m) => '_${m[1]}')
    .toLowerCase();

/// view.yamlのトップノード名 -> ディレクトリ名(CLAUDE.md 5-3節・要件0050)。
/// `~Page`と`~PageEdit`は同じディレクトリ(末尾の「Edit」を除く)。
String directoryOf(String nodeName) =>
    snake(nodeName.endsWith('PageEdit') ? nodeName.substring(0, nodeName.length - 4) : nodeName);

/// 生成対象のトップノードか(~Page / ~PageEdit)。
bool isGenerationTarget(String nodeName) =>
    nodeName.endsWith('Page') || nodeName.endsWith('PageEdit');
