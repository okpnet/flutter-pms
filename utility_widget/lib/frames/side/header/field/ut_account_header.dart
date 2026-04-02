part of '../ut_header.dart';

class UtAccountHeader {
  static Widget of({
    required BuildContext context,
    required UtAccontItem accountItem,
  }) {
    final bytes = accountItem.iconBase64String != null
        ? base64Decode(accountItem.iconBase64String!)
        : null;
    return UtLayoutWidgetHelper.containerWidthExpand(
      child: Row(
        children: [
          if (bytes != null)
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.center,
                child: ClipOval(
                  child: Image.memory(
                    bytes,
                    height: UtSideConstant.iconSize.height,
                    width: UtSideConstant.iconSize.width,
                  ),
                ),
              ),
            ),
          Expanded(
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
          if (accountItem.settingOnPress != null)
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.centerRight,
                child: UtIconButton.tertiary(
                  context: context,
                  icon: Icon(Icons.settings_outlined),
                  size: UtButtonSize.mediam,
                  onPressed: accountItem.settingOnPress,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
