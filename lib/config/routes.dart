import 'package:eatiplan_mobile/screens/splash/main.dart';
import 'package:eatiplan_mobile/shared/storybook/main.dart';
import 'package:get/route_manager.dart';

appRoutes() => [
      GetPage(
        name: '/',
        page: () => const SplashScreen(),
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/storybook',
        page: () => const StoryBook(),
        middlewares: [TrackingMiddelware()],
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 300),
      )
    ];

class TrackingMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    trackingScreen();
    return super.onPageCalled(page);
  }

  trackingScreen() {
    // TODO: analytic tracking screen
  }
}
