// Package imports:
import 'package:theme_lib/theme_lib.dart';
import 'package:view_responsiveness/responsiveness.dart';

import '../../_shared/shared.dart';

///会社の情報
class InfoCompany extends StatefulWidget {
  const InfoCompany({super.key});

  @override
  State<StatefulWidget> createState() => _InfoCompany();
}

class _InfoCompany extends State<InfoCompany> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      defaultPcCells: CommonResponsive.pcNumOfFlex,
      defaultTabletCells: CommonResponsive.tabletNumOfFlext,
      defaultMobileCells: CommonResponsive.mobileNumObFlex,
      spacing: context.spacing,
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: Text(
            '会社情報',
            style: AppTheme.customTheme.textTheme.headlineLarge,
          ),
        ),
        ResponsiveCell(
          layout: CommonResponsive.flexL.copyWith(showOnMobile: false),
          child: Divider(),
        ),
      ],
    );
  }
}
