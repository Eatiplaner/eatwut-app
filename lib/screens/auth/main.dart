import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/data/repository/account_repository.dart';
import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  doLogin() {
    Future<AccountModel> response = AccountRepository().login(
        AccountModel(email: 'eatiplaner6@gmail.com', password: 'Aa@123456'));
    print(response);
  }

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
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(children: [
                Button(
                  label: 'login.title'.tr,
                  variant: ButtonVariant.primary,
                  onPressed: () {
                    Get.toNamed('/login');
                  },
                ),
                const SizedBox(height: 20),
                Button(
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
                            color: Color(0xff1A2019),
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
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'By logging in or registering, you agree to our '),
                          TextSpan(
                              text: 'Terms of Use',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy policy',
                            style: TextStyle(fontWeight: FontWeight.bold),
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
