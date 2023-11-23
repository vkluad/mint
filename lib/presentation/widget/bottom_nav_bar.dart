import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/bottom_navigation_bar_icon.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({required this.tabsRouter, super.key});
  final TabsRouter tabsRouter;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      enableFeedback: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      currentIndex: widget.tabsRouter.activeIndex,
      onTap: widget.tabsRouter.setActiveIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: TextStyles.tab,
      unselectedLabelStyle:
          TextStyles.tab.copyWith(color: Theme.of(context).indicatorColor),
      selectedItemColor: Palette.mainBlue,
      unselectedItemColor: Theme.of(context).indicatorColor,
      iconSize: 21.h,
      items: [
        BottomNavigationBarItem(
          icon: BottomNavigationBarIcon(
            isActive: false,
            imagePath: Assets.svg.home,
          ),
          activeIcon: BottomNavigationBarIcon(
            isActive: true,
            imagePath: Assets.svg.home,
          ),
          label: AppLocalizations.of(context)!.home,
        ),
        BottomNavigationBarItem(
          icon: BottomNavigationBarIcon(
            isActive: false,
            imagePath: Assets.svg.specialists,
          ),
          activeIcon: BottomNavigationBarIcon(
            isActive: true,
            imagePath: Assets.svg.specialists,
          ),
          label: AppLocalizations.of(context)!.specialists,
        ),
        BottomNavigationBarItem(
          icon: BottomNavigationBarIcon(
            imagePath: Assets.svg.sessions,
            isActive: false,
          ),
          activeIcon: BottomNavigationBarIcon(
            imagePath: Assets.svg.sessions,
            isActive: true,
          ),
          label: AppLocalizations.of(context)!.sessions,
        ),
        BottomNavigationBarItem(
          icon: BottomNavigationBarIcon(
            isActive: false,
            imagePath: Assets.svg.profile,
          ),
          activeIcon: BottomNavigationBarIcon(
            isActive: true,
            imagePath: Assets.svg.profile,
          ),
          label: AppLocalizations.of(context)!.profile,
        ),
        BottomNavigationBarItem(
          icon: BottomNavigationBarIcon(
            isActive: false,
            imagePath: Assets.svg.chatBottomBar,
          ),
          activeIcon: BottomNavigationBarIcon(
            isActive: true,
            imagePath: Assets.svg.chatBottomBar,
          ),
          label: AppLocalizations.of(context)!.chat,
        ),
      ],
    );
  }
}
