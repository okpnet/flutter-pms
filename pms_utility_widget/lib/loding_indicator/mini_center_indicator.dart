part of 'indicators.dart';

class MiniCenterIndicator extends StatelessWidget {
  final String? label;
  const MiniCenterIndicator({this.label, super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // 中央にインジケータ表示
          const CupertinoActivityIndicator(radius: 16),
          if (label != null) Text(label!, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
