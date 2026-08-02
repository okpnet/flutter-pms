// Project imports:
import 'package:mock_up/imports.dart';

class ContentError extends StatefulWidget {
  final Exception? exception;
  const ContentError({super.key, this.exception});

  @override
  State<StatefulWidget> createState() => _ContentError();
}

class _ContentError extends State<ContentError> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
