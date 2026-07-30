import 'package:mock_up/contents/_shared/shared.dart';
import 'package:view_responsiveness/responsiveness.dart';
import 'package:theme_lib/theme_lib.dart';

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
