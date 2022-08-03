import 'package:eatiplan_mobile/screens/auth/login/main.dart';
import 'package:eatiplan_mobile/screens/auth/main.dart';
import 'package:eatiplan_mobile/screens/auth/register/main.dart';
import 'package:eatiplan_mobile/screens/home/main.dart';
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
        transition: Transition.native,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/auth',
        page: () => const AuthScreen(),
        middlewares: [TrackingMiddelware()],
        transition: Transition.noTransition,
        popGesture: false,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/login?token',
        page: () => const LoginScreen(),
        middlewares: [TrackingMiddelware()],
        transition: Transition.native,
        popGesture: false,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/register',
        page: () => RegisterScreen(),
        middlewares: [TrackingMiddelware()],
        transition: Transition.native,
        popGesture: false,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/home',
        page: () => const HomeScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      ),
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
