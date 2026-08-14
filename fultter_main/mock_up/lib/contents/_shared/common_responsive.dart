// Package imports:
import 'package:view_responsiveness/responsiveness.dart';

abstract class CommonResponsive {
  static int get pcNumOfFlex => 12;
  static int get tabletNumOfFlext => 8;
  static int get mobileNumObFlex => 4;

  static ResponsiveCellLayout get flexLx =>
      ResponsiveCellLayout(pcFlex: 12, tabletFlex: 8, mobileFlex: 4);

  static ResponsiveCellLayout get flexL =>
      ResponsiveCellLayout(pcFlex: 9, tabletFlex: 6, mobileFlex: 3);

  static ResponsiveCellLayout get flexM =>
      ResponsiveCellLayout(pcFlex: 6, tabletFlex: 4, mobileFlex: 2);

  static ResponsiveCellLayout get flexSm =>
      ResponsiveCellLayout(pcFlex: 4, tabletFlex: 3, mobileFlex: 1);

  static ResponsiveCellLayout get flexS =>
      ResponsiveCellLayout(pcFlex: 3, tabletFlex: 2, mobileFlex: 1);
  static ResponsiveCellLayout get allOne =>
      ResponsiveCellLayout(pcFlex: 1, tabletFlex: 1, mobileFlex: 1);
}
