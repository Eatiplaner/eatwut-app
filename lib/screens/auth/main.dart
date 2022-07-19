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
            const Expanded(
              flex: 2,
              child: Center(
                child: Text('Logo',
                    style: TextStyle(
                      fontSize: 64,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(children: [
                EButton(
                  label: 'login.title'.tr,
                  variant: ButtonVariant.primary,
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                ),
                const SizedBox(height: 20),
                EButton(
                  label: 'signup.title'.tr,
                  variant: ButtonVariant.secondary,
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: () {},
                    child: Text('login.guest'.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            color: primaryColor,
                            fontWeight: FontWeight.w500)))
              ]),
            ),
            Expanded(
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