/// 実体の定義(項目・種類・親子)から、台帳(テーブル/ツリー)と編集の画面を作る共通部品。
///
/// - [EntityDefinition] / [FieldDefinition]: 実体と項目の定義(DB の列キー・種類・参照・選択肢)
/// - [EntityCatalog]: 実体の登録簿(参照の選択肢・使用中の判定・子の台帳をキーで解決)
/// - [IEntityRepository]: 取得元。[InMemoryEntityRepository] はサンプル、GraphQL 版は差し替える
/// - [EntityListPage] / [EntityEditPage]: 画面。遷移は呼び出し側のコールバックで行う
library;

export 'src/catalog.dart';
export 'src/condition.dart';
export 'src/definition.dart';
export 'src/i18n/strings.g.dart' show EntityScreenStrings, EntityScreenLocale;
export 'src/pages/entity_edit_page.dart';
export 'src/pages/entity_list_page.dart';
export 'src/pages/entity_nested_page.dart';
export 'src/pages/entity_scope.dart' show EntityScope;
export 'src/record.dart';
export 'src/repository.dart';
