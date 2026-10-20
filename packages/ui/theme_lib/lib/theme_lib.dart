/// 機能ごとのページデザインを統一するテーマ管理ライブラリ。
///
/// `themeManagerProvider`で管理インスタンスを取得し、システム/ライト/ダークの
/// 切り替え、JSONからのテーマ取り込み・書き出しをオンザフライで行う。
/// 使い方は`doc/contents/usage.md`を参照。
library;

export 'builder/built_in_themes.dart';
export 'builder/theme_builder.dart';
export 'extensions/search_field_extensions.dart';
export 'extensions/space_extensions.dart';
export 'extensions/text_extensions.dart';
export 'extensions/theme_variant.dart';
export 'extensions/variant_extensions.dart';
export 'manager/theme_manager.dart';
export 'model/theme_definition.dart';
export 'model/theme_exceptions.dart';
export 'model/theme_state.dart';
export 'tokens/border_field.dart';
export 'tokens/space_field.dart';
