import 'package:eatiplan_mobile/routes/middleware.dart';
import 'package:eatiplan_mobile/screens/home/main.dart';
import 'package:eatiplan_mobile/screens/home/setting/main.dart';
import 'package:get/route_manager.dart';

settingRoutes() => [
      GetPage(
        name: '/home',
        page: () => const HomeScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/home/settings',
        page: () => const SettingScreen(),
        middlewares: [TrackingMiddelware()],
        transition: Transition.native,
        popGesture: false,
        transitionDuration: const Duration(milliseconds: 300),
      ),
    ];
