import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/shared/widgets/header/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotifySentEmail extends StatefulWidget {
  const NotifySentEmail({super.key});

  @override
  createState() => _NotifySentEmail();
}

class _NotifySentEmail extends State<NotifySentEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          padding: const EdgeInsets.all(42),
          child: Column(children: [
            Flexible(
              flex: 5,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        EHeader(
                            title: '',
                            navigateIcon: const Icon(Icons.arrow_back),
                            onPressedIcon: () {
                              Get.back();
                            }),
                        Column(
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
                                  TextSpan(
                                      text:
                                          '${'auth.forgot_password.notify_sent_email.1'.tr} '),
                                  TextSpan(
                                      text: Get.arguments +
                                          ' ', // Note: Get email from argument
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          '${'auth.forgot_password.notify_sent_email.2'.tr} '),
                                  TextSpan(
                                    text:
                                        '${'auth.forgot_password.notify_sent_email.3'.tr} ',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: '${'common.from'.tr} ',
                                  ),
                                  TextSpan(
                                    text: '${'common.app_name'.tr}, ',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text:
                                        '${'auth.forgot_password.notify_sent_email.4'.tr} ',
                                  ),
                                  TextSpan(
                                    text:
                                        '${'auth.forgot_password.resend_email'.tr}.',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        EButton(
                          label: 'auth.forgot_password.go_to_your_mailbox'.tr,
                          variant: ButtonVariant.primary,
                          onPressed: () {},
                        ),
                        const SizedBox(height: 20),
                        EButton(
                          label: 'auth.forgot_password.resend_email'.tr,
                          variant: ButtonVariant.secondary,
                          onPressed: () {},
                        ),
                      ])),
            ),
          ])),
    );
  }
}
