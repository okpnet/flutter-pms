part of 'edit_company.dart';

class EditProvision extends ConsumerStatefulWidget {
  const EditProvision({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditProvision();
}

class _EditProvision extends ConsumerState<EditProvision> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      config: ResponsiveGridConfig.standard(),
      children: [
        ResponsiveCell(
          layout: CommonResponsive.flexLx,
          child: ContentsTitle('提供する製品またはサービス'),
        ),
        ResponsiveCell(layout: CommonResponsive.flexLx, child: Text('未実装')),
      ],
    );
  }
}
