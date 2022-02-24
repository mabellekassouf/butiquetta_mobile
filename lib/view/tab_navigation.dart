import 'package:butiquetta_mobile/view/Favorites/Main%20Favorites/FavoritesMain.dart';
import 'package:butiquetta_mobile/view/Home/homePage.dart';
import 'package:butiquetta_mobile/view/Profile/Profile.dart';
import 'package:butiquetta_mobile/view/Search/Search_home.dart';
import 'package:butiquetta_mobile/view/tab_item.dart';
import 'package:flutter/material.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({ required this.navigatorKey,  required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.root: (context) => (tabName[tabItem]=='home')? HomePageScreen():
      (tabName[tabItem]=='search')? SearchScreen():(tabName[tabItem]=='favorites')?FavoritesScreen():ProfileScreen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }
}