part of '../ut_header.dart';

class UtAccountHeader {
  static Widget primary({
    required BuildContext context,
    required String account,
    String? iconString,
    VoidCallback? settingOnPress,
  }) {
    final bytes = iconString != null ? base64Decode(iconString) : null;
    return UtLayoutWidgetHelper.containerWidthExpand(
      child: Row(
        children: [
          if (bytes != null)
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.center,
                child: Image.memory(
                  bytes,
                  height: UtSideConstant.iconSize.height,
                  width: UtSideConstant.iconSize.width,
                ),
              ),
            ),
          Expanded(
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                account,
                softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: UtFontScale.of(
                    context: context,
                    scale: UtSideConstant.accountFontSizeScale,
                  ),
                ),
              ),
            ),
          ),
          if (settingOnPress != null)
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.centerRight,
                child: UtIconButton.tertiary(
                  context: context,
                  icon: Icon(Icons.settings_outlined),
                  size: UtButtonSize.mediam,
                  onPressed: settingOnPress,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
