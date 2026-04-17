part of '../ut_indicators.dart';

class UtOverlayIndicator extends StatelessWidget {
  final bool show;
  const UtOverlayIndicator({required this.show, super.key});

  @override
  Widget build(BuildContext context) {
    if (!show) {
      return SizedBox.shrink();
    }
    return Stack(
      children: [
        const ModalBarrier(
          dismissible: false,
          color: Colors.black26, // 半透明で操作不能を示す
        ),
        // 中央にインジケータ表示
        const Center(
          child: CupertinoActivityIndicator(radius: UtIndicatorConstant.large),
        ),
      ],
    );
  }
}
