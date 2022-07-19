import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/shared/widgets/iconButton/main.dart';
import 'package:eatiplan_mobile/shared/widgets/textfield/textfield/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // doLogin() {
  //   Future<AccountModel> response = AccountRepository().login(
  //       AccountModel(email: 'eatiplaner6@gmail.com', password: 'Aa@123456'));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(42),
        child: Center(
            child: Column(children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text('Logo',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w700,
                  )),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EIconButton(
                        icon: const Icon(Icons.arrow_back),
                        height: 40,
                        width: 40,
                        onPressed: () {
                          Get.toNamed('/auth');
                        },
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'login.welcomeBack'.tr,
                        style: const TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 30),
                      ETextfield(
                        value: 'test',
                        icon: Icons.account_circle_outlined,
                        placeholder: 'login.username.placeholder'.tr,
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 14),
                      ETextfield(
                        value: 'test',
                        icon: Icons.lock_outline,
                        placeholder: 'login.password.placeholder'.tr,
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 14),
                      TextButton(
                          onPressed: () {},
                          child: Text('login.forgotPassword'.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500))),
                      const SizedBox(height: 44),
                      EButton(
                        label: 'login.continue'.tr,
                        variant: ButtonVariant.primary,
                        onPressed: () {},
                      ),
                    ])),
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
        ])),
      ),
    );
  }
}
