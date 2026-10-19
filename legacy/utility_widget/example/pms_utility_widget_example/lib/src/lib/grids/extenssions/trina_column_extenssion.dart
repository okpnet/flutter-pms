import 'package:flutter/material.dart';
import 'package:trina_grid/trina_grid.dart';

/// TrinaColumnの拡張メソッド
extension PlutoColumnExtension on TrinaColumn {
  /// 指定されたプロパティで新しいTrinaColumnを作成します
  /// 指定されないプロパティは元の値を使用します
  TrinaColumn copyWith({
    String? title,
    String? field,
    TrinaColumnType? type,
    bool? readOnly,
    TrinaColumnCheckReadOnly? checkReadOnly,
    double? width,
    double? minWidth,
    EdgeInsets? titlePadding,
    EdgeInsets? filterPadding,
    InlineSpan? titleSpan,
    EdgeInsets? cellPadding,
    TrinaColumnTextAlign? textAlign,
    TrinaColumnTextAlign? titleTextAlign,
    TrinaColumnFrozen? frozen,
    TrinaColumnSort? sort,
    TrinaColumnValueFormatter? formatter,
    bool? applyFormatterInEditing,
    Color? backgroundColor,
    TrinaColumnRenderer? renderer,
    TrinaColumnFooterRenderer? footerRenderer,
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
    return TrinaColumn(
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
