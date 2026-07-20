// 4. よく使うレイアウトパターンを定数化して「メモリを節約（再利用）」
import 'package:view_responsiveness/responsive/wrap_cell_layout.dart';

class CommonLayouts {
  static const fullWidth = WrapCellLayout(
    mobileFlex: 1,
    tabletFlex: 12,
    pcFlex: 12,
  );
  static const halfWidth = WrapCellLayout(
    mobileFlex: 1,
    tabletFlex: 6,
    pcFlex: 6,
  );
  static const quortfWidth = WrapCellLayout(
    mobileFlex: 2,
    tabletFlex: 3,
    pcFlex: 3,
  );
  static const sidebar = WrapCellLayout(
    mobileFlex: 1,
    tabletFlex: 4,
    pcFlex: 3,
  );
}
