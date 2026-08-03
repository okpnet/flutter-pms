import '../../../imports.dart';

class ContensScaffold extends ConsumerWidget {
  final Widget body;

  const ContensScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('title')),
      body: body,
    );
  }
}
