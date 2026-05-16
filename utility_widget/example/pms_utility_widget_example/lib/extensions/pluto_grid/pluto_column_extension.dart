import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

/// PlutoColumnの拡張メソッド
extension PlutoColumnExtension on PlutoColumn {
  /// 指定されたプロパティで新しいPlutoColumnを作成します
  /// 指定されないプロパティは元の値を使用します
  PlutoColumn copyWith({
    String? title,
    String? field,
    PlutoColumnType? type,
    bool? readOnly,
    PlutoColumnCheckReadOnly? checkReadOnly,
    double? width,
    double? minWidth,
    EdgeInsets? titlePadding,
    EdgeInsets? filterPadding,
    InlineSpan? titleSpan,
    EdgeInsets? cellPadding,
    PlutoColumnTextAlign? textAlign,
    PlutoColumnTextAlign? titleTextAlign,
    PlutoColumnFrozen? frozen,
    PlutoColumnSort? sort,
    PlutoColumnValueFormatter? formatter,
    bool? applyFormatterInEditing,
    Color? backgroundColor,
    PlutoColumnRenderer? renderer,
    PlutoColumnFooterRenderer? footerRenderer,
    bool? suppressedAutoSize,
    bool? enableColumnDrag,
    bool? enableRowDrag,
    bool? enableRowChecked,
    bool? enableSorting,
    bool? enableContextMenu,
    bool? enableDropToResize,
    bool? enableFilterMenuItem,
    bool? enableHideColumnMenuItem,
    bool? enableSetColumnsMenuItem,
    bool? enableAutoEditing,
    bool? enableEditingMode,
    bool? hide,
  }) {
    return PlutoColumn(
      title: title ?? this.title,
      field: field ?? this.field,
      type: type ?? this.type,
      readOnly: readOnly ?? this.readOnly,
      checkReadOnly: checkReadOnly ?? this.checkReadOnly,
      width: width ?? this.width,
      minWidth: minWidth ?? this.minWidth,
      titlePadding: titlePadding ?? this.titlePadding,
      filterPadding: filterPadding ?? this.filterPadding,
      titleSpan: titleSpan ?? this.titleSpan,
      cellPadding: cellPadding ?? this.cellPadding,
      textAlign: textAlign ?? this.textAlign,
      titleTextAlign: titleTextAlign ?? this.titleTextAlign,
      frozen: frozen ?? this.frozen,
      sort: sort ?? this.sort,
      formatter: formatter ?? this.formatter,
      applyFormatterInEditing:
          applyFormatterInEditing ?? this.applyFormatterInEditing,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      renderer: renderer ?? this.renderer,
      footerRenderer: footerRenderer ?? this.footerRenderer,
      suppressedAutoSize: suppressedAutoSize ?? this.suppressedAutoSize,
      enableColumnDrag: enableColumnDrag ?? this.enableColumnDrag,
      enableRowDrag: enableRowDrag ?? this.enableRowDrag,
      enableRowChecked: enableRowChecked ?? this.enableRowChecked,
      enableSorting: enableSorting ?? this.enableSorting,
      enableContextMenu: enableContextMenu ?? this.enableContextMenu,
      enableDropToResize: enableDropToResize ?? this.enableDropToResize,
      enableFilterMenuItem: enableFilterMenuItem ?? this.enableFilterMenuItem,
      enableHideColumnMenuItem:
          enableHideColumnMenuItem ?? this.enableHideColumnMenuItem,
      enableSetColumnsMenuItem:
          enableSetColumnsMenuItem ?? this.enableSetColumnsMenuItem,
      enableAutoEditing: enableAutoEditing ?? this.enableAutoEditing,
      enableEditingMode: enableEditingMode ?? this.enableEditingMode,
      hide: hide ?? this.hide,
    );
  }
}
