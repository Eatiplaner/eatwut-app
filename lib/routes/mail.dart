import 'package:eatiplan_mobile/screens/mail/activation_account/main.dart';
import 'package:eatiplan_mobile/screens/mail/reset_password/main.dart';
import 'package:get/route_manager.dart';

mailRoutes() => [
      GetPage(
        name: '/activation-account',
        page: () => const MailActivationAccountScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/reset-password',
        page: () => MailResetPassworScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      ),
    ];
