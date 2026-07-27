// 4. よく使うレイアウトパターンを定数化して「メモリを節約（再利用）」

import 'package:view_responsiveness/responsive/responsive.dart';

class CommonLayouts {
  static const fullWidth = ResponsiveCellLayout(
    mobileFlex: 1,
    tabletFlex: 12,
    pcFlex: 12,
  );
  static const halfWidth = ResponsiveCellLayout(
    mobileFlex: 1,
    tabletFlex: 6,
    pcFlex: 6,
  );
  static const quortfWidth = ResponsiveCellLayout(
    mobileFlex: 2,
    tabletFlex: 3,
    pcFlex: 3,
  );
  static const sidebar = ResponsiveCellLayout(
    mobileFlex: 1,
    tabletFlex: 4,
    pcFlex: 3,
  );
}
