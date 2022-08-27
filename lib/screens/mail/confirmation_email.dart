import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmationEmailScreen extends StatefulWidget {
  const ConfirmationEmailScreen({super.key});

  @override
  createState() => _ConfirmationEmailScreen();
}

class _ConfirmationEmailScreen extends State<ConfirmationEmailScreen> {
  String animation = 'success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('mail.confirmation_email.successfully_message'.tr,
              style: const TextStyle(
                  fontSize: 15,
                  color: primaryColor,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w700)),
          SizedBox(
            height: 250,
            child: FlareActor(
              'assets/animations/success.flr',
              animation: animation,
            ),
          ),
          Text('common.tap_anywhere_to_exist'.tr,
              style: const TextStyle(
                  fontSize: 14,
                  color: primaryColor,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w400))
        ],
      )),
    );
  }
}
