import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(42),
        child: Center(
          child: Column(children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Image.asset('assets/images/app-circle.png'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(children: [
                EButton(
                  label: 'auth.login.title'.tr,
                  variant: ButtonVariant.primary,
                  onPressed: () {
                    Get.toNamed('/auth/login');
                  },
                ),
                const SizedBox(height: 20),
                EButton(
                  label: 'auth.register.title'.tr,
                  variant: ButtonVariant.secondary,
                  onPressed: () {
                    Get.toNamed('/auth/register');
                  },
                ),
                const SizedBox(height: 20),
                TextButton(
                    style: const ButtonStyle(
                        enableFeedback: false,
                        splashFactory: NoSplash.splashFactory),
                    onPressed: () {
                      Get.toNamed('/home');
                    },
                    child: Text('auth.login.guest'.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            color: primaryColor,
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w500)))
              ]),
            ),
            Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'auth.bottom.text.1'.tr),
                          TextSpan(
                              text: 'auth.bottom.text.2'.tr,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'auth.bottom.text.3'.tr),
                          TextSpan(
                            text: 'auth.bottom.text.4'.tr,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
