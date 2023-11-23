import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/bottom_nav_bar.dart';

@RoutePage()
class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: AutoTabsScaffold(
        routes: const <PageRouteInfo<dynamic>>[
          DoctorsRoute(),
          SpecialistsNestedWrapperRoute(),
          SessionsRoute(),
          ProfileRoute(),
          ChatListRoute()
        ],
        bottomNavigationBuilder: (_, TabsRouter tabsRouter) {
          return CustomBottomBar(tabsRouter: tabsRouter);
        },
      ),
    );
  }
}
