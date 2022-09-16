import 'package:eatiplan_mobile/screens/auth/forgot_password/notify_sent_email.dart';
import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/shared/widgets/forms/input/main.dart';
import 'package:eatiplan_mobile/shared/widgets/iconButton/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  createState() => _ForgotPasswordScreen();
}

class _ForgotPasswordScreen extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          padding: const EdgeInsets.all(42),
          child: Column(children: [
            Flexible(
              flex: 1,
              child: Center(
                child: Image.asset('assets/images/app-circle.png'),
              ),
            ),
            Flexible(
              flex: 5,
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
                            Get.toNamed('/auth/login');
                          },
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'auth.forgot_password.title'.tr,
                          style: const TextStyle(
                              fontFamily: fontFamily,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 30),
                        FormBuilder(
                            key: _formKey,
                            child: FormInput(
                              name: "email",
                              label: "auth.register.field.label.email".tr,
                              icon: Icons.email_outlined,
                              placeholder:
                                  'auth.forgot_password.email.placeholder'.tr,
                              validator: ValidationBuilder()
                                  .required()
                                  .email()
                                  .build(),
                            )),
                        const SizedBox(height: 40),
                        EButton(
                          label: 'common.continue'.tr,
                          variant: ButtonVariant.primary,
                          onPressed: () {
                            _formKey.currentState?.validate();
                            if (_formKey.currentState?.isValid == true) {
                              Get.to(const NotifySentEmail(),
                                  arguments: _formKey.currentState
                                      ?.getRawValue('email'));
                            }
                          },
                        ),
                      ])),
            ),
          ])),
    );
  }
}
