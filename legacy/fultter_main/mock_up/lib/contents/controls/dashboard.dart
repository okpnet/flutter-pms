import '../../imports.dart';
import '../contents.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Dashboard();
}

class _Dashboard extends ConsumerState<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return UnControlContentsFrame(
      body: ResponsiveGrid(
        config: ResponsiveGridConfig.standard(),
        children: [
          ResponsiveCell(
            layout: CommonResponsive.flexLx,
            child: ContentsTitle('Dashbord'),
          ),
        ],
      ),
    );
  }
}
