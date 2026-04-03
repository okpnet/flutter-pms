part of '../ut_header.dart';

class UtAccountHeader {
  //NavigationRail用アカウントヘッダ
  static Widget ofRail({
    required BuildContext context,
    required UtAccontItem accountItem,
  }) {
    return UtLayoutWidgetHelper.containerAllPading(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          accountItem.iconImageBytes != null
              ? Padding(
                  padding: EdgeInsets.only(
                    left: UtSideConstant.accountPaddingSpace,
                  ),
                  child: ClipOval(
                    child: Image.memory(
                      accountItem.iconImageBytes!,
                      height: UtSideConstant.iconSize.height,
                      width: UtSideConstant.iconSize.width,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          // Flexible(
          //   flex: 1,
          //   fit: FlexFit.tight,
          //   child: Align(
          //     alignment: AlignmentGeometry.center,
          //     child: accountItem.iconImageBytes != null
          //         ? ClipOval(
          //             child: Image.memory(
          //               accountItem.iconImageBytes!,
          //               height: UtSideConstant.iconSize.height,
          //               width: UtSideConstant.iconSize.width,
          //             ),
          //           )
          //         : const SizedBox.shrink(),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(left: UtSideConstant.accountPaddingSpace),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: UtSideConstant.headerNameMaxWidth,
                ),
                child: Text(
                  accountItem.account,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
          ),

          // Flexible(
          //   flex: 1,
          //   child: Align(
          //     alignment: AlignmentGeometry.centerLeft,
          //     child: Text(
          //       accountItem.account,
          //       softWrap: true,
          //       style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: UtFontScale.of(
          //           context: context,
          //           scale: UtSideConstant.accountFontSizeScale,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Expanded(child: SizedBox()),
          Align(
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
          // Flexible(
          //   flex: 1,
          //   fit: FlexFit.tight,
          //   child: Align(
          //     alignment: AlignmentGeometry.centerRight,
          //     child: accountItem.settingOnPress != null
          //         ? UtIconButton.tertiary(
          //             context: context,
          //             icon: Icon(Icons.settings_outlined),
          //             size: UtButtonSize.mediam,
          //             onPressed: accountItem.settingOnPress,
          //           )
          //         : const SizedBox.shrink(),
          //   ),
          // ),
        ],
      ),
    );
  }

  //Drawer用アカウントヘッダ
  static Widget ofDrawer({
    required BuildContext context,
    required UtAccontItem accountItem,
  }) {
    return UtLayoutWidgetHelper.containerAllPading(
      child: Row(
        children: [
          if (accountItem.iconImageBytes != null)
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.center,
                child: Image.memory(
                  accountItem.iconImageBytes!,
                  height: UtSideConstant.iconSize.height,
                  width: UtSideConstant.iconSize.width,
                ),
              ),
            ),
          Expanded(
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(
                accountItem.account,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
