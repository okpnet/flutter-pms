import 'package:flutter/cupertino.dart';

import '../../../imports.dart';

class OverlayIndicator extends StatelessWidget {
  final bool isShow;
  final Widget? label;
  const OverlayIndicator({super.key, required this.isShow, this.label});

  @override
  Widget build(BuildContext context) {
    if (!isShow) {
      return SizedBox.shrink();
    }
    return Stack(
      children: [
        const ModalBarrier(
          dismissible: false,
          color: Colors.black26, // 半透明で操作不能を示す
        ),
        // 中央にインジケータ表示
        Center(
          child: Row(
            mainAxisAlignment: .center,
            children: [const CupertinoActivityIndicator(radius: 16), ?label],
          ),
        ),
      ],
    );
  }
}
