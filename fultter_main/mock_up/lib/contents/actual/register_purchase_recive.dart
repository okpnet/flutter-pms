import 'package:mock_up/contents/contents.dart';

import '../../imports.dart';

class RegisterPurchaseRecive extends ConsumerStatefulWidget {
  const RegisterPurchaseRecive({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegisterPurchaseRecive();
}

class _RegisterPurchaseRecive extends ConsumerState<RegisterPurchaseRecive> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('検品処理'),
        ),
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ResponsiveGrid(
            config: ResponsiveGridConfig.standard(),
            children: [
              ResponsiveCell(
                layout: CommonResponsive.flexS,
                child: ColoredBox(color: Colors.amber).spaceAll(context),
              ),
              ResponsiveCell(
                layout: CommonResponsive.flexL,
                child: Column(children: [Text('a')]).spaceAll(context),
              ),
            ],
          ),
        ),
      ],
    ).spaceAll(context);
  }
}
