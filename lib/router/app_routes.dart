import 'package:fl_components/models/models.dart';
import 'package:fl_components/screen/card_screen.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screen/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'input',
        icon: Icons.input,
        name: 'Inputs',
        screen: const InputsScreen()),
    MenuOption(
        route: 'list',
        name: 'List',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlterScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Avatar Circle',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_outline_rounded,
        name: 'Animated',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slow_motion_video_rounded,
        name: 'Slider - Checks',
        screen: const SliderScreen()),
    MenuOption(
        route: 'listview-builder',
        icon: Icons.build_circle_outlined,
        name: 'infinit scroll',
        screen: const ListviewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'list1': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlterScreen(),
  }; */
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlterScreen(),
    );
  }
}
