import 'package:eatiplan_mobile/routes/middleware.dart';
import 'package:eatiplan_mobile/screens/auth/forgot_password/main.dart';
import 'package:eatiplan_mobile/screens/auth/login/main.dart';
import 'package:eatiplan_mobile/screens/auth/main.dart';
import 'package:eatiplan_mobile/screens/auth/register/main.dart';
import 'package:get/route_manager.dart';

authRoutes() => [
      GetPage(
        name: '/auth',
        page: () => const AuthScreen(),
        middlewares: [TrackingMiddelware()],
        transition: Transition.noTransition,
        popGesture: false,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/auth/login',
        page: () => const LoginScreen(),
        middlewares: [TrackingMiddelware()],
        transition: Transition.native,
        popGesture: false,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/auth/register',
        page: () => RegisterScreen(),
        middlewares: [TrackingMiddelware()],
        transition: Transition.native,
        popGesture: false,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/auth/forgot-password',
        page: () => const ForgotPasswordScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      ),
    ];
