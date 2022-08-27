import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordSuccessScreen extends StatefulWidget {
  const ResetPasswordSuccessScreen({super.key});

  @override
  createState() => _ResetPasswordSuccessScreen();
}

class _ResetPasswordSuccessScreen extends State<ResetPasswordSuccessScreen> {
  String animation = 'success';
  bool _clickable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
          child: Center(
              child: Container(
                  padding: const EdgeInsets.all(42),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('mail.reset_password.successfully_message'.tr,
                          style: const TextStyle(
                              fontSize: 15,
                              color: primaryColor,
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: 250,
                        child: FlareActor('assets/animations/success.flr',
                            animation: animation, callback: (value) {
                          setState(() {
                            _clickable = true;
                          });
                        }),
                      ),
                      _clickable
                          ? EButton(
                              label: 'common.return_to_login_screen'.tr,
                              variant: ButtonVariant.primary,
                              onPressed: () {
                                Get.toNamed('/login');
                              },
                            )
                          : SizedBox(
                              child: ButtonTheme(
                                  child: MaterialButton(
                                      height: 56, onPressed: () {})))
                    ],
                  )))),
    );
  }
}
