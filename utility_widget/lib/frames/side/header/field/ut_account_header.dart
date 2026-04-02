part of '../ut_header.dart';

class UtAccountHeader {
  static Widget of({
    required BuildContext context,
    required UtAccontItem accountItem,
  }) {
    return UtLayoutWidgetHelper.containerWidthExpand(
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Align(
              alignment: AlignmentGeometry.center,
              child: accountItem.iconImageBytes != null
                  ? ClipOval(
                      child: Image.memory(
                        accountItem.iconImageBytes!,
                        height: UtSideConstant.iconSize.height,
                        width: UtSideConstant.iconSize.width,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                accountItem.account,
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
          Flexible(
            flex: 1,
            child: Align(
              alignment: AlignmentGeometry.centerRight,
              child: accountItem.settingOnPress != null
                  ? UtIconButton.tertiary(
                      context: context,
                      icon: Icon(Icons.settings_outlined),
                      size: UtButtonSize.mediam,
                      onPressed: accountItem.settingOnPress,
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
