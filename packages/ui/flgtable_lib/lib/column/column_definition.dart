import 'package:flutter/widgets.dart';

import '../cell/cell_renderer.dart';
import '../data/conditions.dart';

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
    this.type = ColumnType.string,
    this.sortable = true,
    this.filterable = true,
    TextAlign? textAlign,
    this.overflow = TextOverflow.ellipsis,
    CellRenderer<T>? renderer,
  }) : textAlign = textAlign ?? defaultAlign(type),
       renderer =
           renderer ??
           TextCellRenderer<T>(
             textAlign: textAlign ?? defaultAlign(type),
             overflow: overflow,
           );

  /// 配置の指定がないときの型ごとの標準。数値=右寄せ、文字列=左寄せ、日付/時間=センター。
  static TextAlign defaultAlign(ColumnType type) => switch (type) {
    ColumnType.number => TextAlign.end,
    ColumnType.string => TextAlign.start,
    ColumnType.time => TextAlign.center,
  };

  final String key;
  final String label;
  final CellGetter<T> getter;
  final CellSetter<T>? setter;

  /// null のときはテーマの文字サイズから20文字分の幅を使う。
  final double? width;
  final bool visible;

  /// 取得に失敗した場合に表示する標準値。
  final String defaultValue;

  /// フィルタ演算子とソートの比較方法を決める値の型。
  final ColumnType type;

  /// テーブルのソート/フィルタが有効なとき、この列で使えるか。
  final bool sortable;
  final bool filterable;

  /// セル内の文字の位置(左寄せ`start`・センター`center`・右寄せ`end`)。
  final TextAlign textAlign;

  /// 文字列が列幅に収まらないときの扱い。
  final TextOverflow overflow;
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
    'type': type.name,
    'sortable': sortable,
    'filterable': filterable,
    'textAlign': textAlign.name,
    'overflow': overflow.name,
  };
}
