part of '../ut_indicators.dart';

class UtMiniCenterIndicator extends StatelessWidget {
  final String? label;
  const UtMiniCenterIndicator({this.label, super.key});
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
