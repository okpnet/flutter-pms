import '../../imports.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Dashboard();
}

class _Dashboard extends ConsumerState<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Text('dashbord');
  }
}
