import 'package:eatiplan_mobile/routes/auth.dart';
import 'package:eatiplan_mobile/routes/home/main.dart';
import 'package:eatiplan_mobile/routes/mail.dart';
import 'package:eatiplan_mobile/routes/middleware.dart';
import 'package:eatiplan_mobile/shared/storybook/main.dart';
import 'package:get/route_manager.dart';

appRoutes() =>
    [
      GetPage(
        name: '/storybook',
        page: () => const StoryBook(),
        middlewares: [TrackingMiddelware()],
        transition: Transition.native,
        transitionDuration: const Duration(milliseconds: 300),
      ),
    ] +
    homeRoutes() +
    authRoutes() +
    mailRoutes();
