// Package imports:
import 'package:mock_up/imports.dart';

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
      config: ResponsiveGridConfig.standard(),
      spacing: context.spacing,
      children: [
        ///Title
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: Text(
            '会社情報',
            style: context.textStyleMode(sizeMode: .headlineLarge),
          ),
        ),

        ///社名
        ResponsiveCell(
          layout: CommonResponsive.flexLx.copyWith(showOnMobile: false),
          child: Divider(),
        ),
        ResponsiveCell(
          layout: CommonResponsive.flexS.copyWith(mobileFlex: 12),
          child: Text(
            '会社名:',
            style: context.textStyleMode(sizeMode: .labelMedium),
          ),
        ),
        ResponsiveCell(
          layout: CommonResponsive.flexL.copyWith(showOnMobile: false),
          child: Text(
            'XXX会社',
            style: context.textStyleMode(sizeMode: .titleMedium),
          ),
        ),

        ///
        ResponsiveCell(
          layout: CommonResponsive.flexLx.copyWith(
            showOnPc: false,
            showOnTablet: false,
          ),
          child: Row(
            children: [
              Text('会社名', style: context.textStyleMode(sizeMode: .labelMedium)),
              Text(
                'XXX会社',
                style: context.textStyleMode(sizeMode: .titleMedium),
              ),
            ],
          ),
        ),

        ///適用範囲
        ResponsiveCell(
          layout: CommonResponsive.flexLx.copyWith(showOnMobile: false),
          child: Column(
            children: [
              Text(
                '事業内容:',
                style: context.textStyleMode(sizeMode: .labelMedium),
              ),
              Text(
                'XXXの製造、販売',
                style: context.textStyleMode(sizeMode: .titleMedium),
              ),
            ],
          ),
        ),
        ResponsiveCell(
          layout: CommonResponsive.flexLx.copyWith(
            showOnPc: false,
            showOnTablet: false,
          ),
          child: Row(
            children: [
              Text(
                '事業内容',
                style: context.textStyleMode(sizeMode: .labelMedium),
              ),
              Text(
                'XXXの製造、販売',
                style: context.textStyleMode(sizeMode: .titleMedium),
              ),
            ],
          ),
        ),

        ///郵便番号と住所
        ResponsiveCell(
          layout: CommonResponsive.flexLx.copyWith(showOnMobile: false),
          child: Column(
            children: [
              Text('住所:', style: context.textStyleMode(sizeMode: .labelMedium)),
              Text(
                '郵便番号　住所',
                style: context.textStyleMode(sizeMode: .titleMedium),
              ),
            ],
          ),
        ),
        ResponsiveCell(
          layout: CommonResponsive.flexLx.copyWith(
            showOnPc: false,
            showOnTablet: false,
          ),
          child: Row(
            children: [
              Text('住所', style: context.textStyleMode(sizeMode: .labelMedium)),
              Text(
                '郵便番号　住所',
                style: context.textStyleMode(sizeMode: .titleMedium),
              ),
            ],
          ),
        ),

        ///電話番号とファックス
        ResponsiveCell(
          layout: CommonResponsive.flexLx.copyWith(showOnMobile: false),
          child: Column(
            children: [
              Text('電話:', style: context.textStyleMode(sizeMode: .labelMedium)),
              Text(
                '郵便番号　住所',
                style: context.textStyleMode(sizeMode: .titleMedium),
              ),
            ],
          ),
        ),
        ResponsiveCell(
          layout: CommonResponsive.flexLx.copyWith(
            showOnPc: false,
            showOnTablet: false,
          ),
          child: Row(
            children: [
              Text('住所', style: context.textStyleMode(sizeMode: .labelMedium)),
              Text(
                '郵便番号　住所',
                style: context.textStyleMode(sizeMode: .titleMedium),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
