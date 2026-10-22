import '../cell/cell_renderer.dart';

/// オブジェクトから表示文字列を取り出すゲッターデリゲート。
typedef CellGetter<T> = String Function(T item);

/// 文字列をオブジェクトへ反映するセッターデリゲート。変換できなければ false。
typedef CellSetter<T> = bool Function(T item, String value);

/// 列の定義。表示名・幅・値の取得/設定・セル表示を保持する。
class ColumnDefinition<T> {
  ColumnDefinition({
    required this.key,
    required this.label,
    required this.getter,
    this.setter,
    this.width,
    this.visible = true,
    this.defaultValue = '',
    CellRenderer<T>? renderer,
  }) : renderer = renderer ?? TextCellRenderer<T>();

  final String key;
  final String label;
  final CellGetter<T> getter;
  final CellSetter<T>? setter;

  /// null のときはテーマの文字サイズから20文字分の幅を使う。
  final double? width;
  final bool visible;

  /// 取得に失敗した場合に表示する標準値。
  final String defaultValue;
  final CellRenderer<T> renderer;

  /// 値の取得。例外時は [defaultValue] を返す。
  String read(T item) {
    try {
      return getter(item);
    } catch (_) {
      return defaultValue;
    }
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'label': label,
        'width': width,
        'visible': visible,
        'editable': setter != null,
      };
}
