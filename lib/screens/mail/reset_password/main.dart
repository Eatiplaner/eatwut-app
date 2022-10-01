import 'package:eatiplan_mobile/screens/mail/reset_password/success.dart';
import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/shared/widgets/forms/input/main.dart';
import 'package:eatiplan_mobile/shared/widgets/header/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

class MailResetPassworScreen extends HookWidget {
  MailResetPassworScreen({super.key});
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    var passwordState = useState<String>('');

    bool hasMoreThan8Chars() {
      if (passwordState.value.isNotEmpty) {
        return passwordState.value.length >= 8;
      }
      return false;
    }

    bool isSpecialCase(String s) {
      return s.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    }

    bool hasSpecialCase() {
      if (passwordState.value.isNotEmpty) {
        return isSpecialCase(passwordState.value);
      }
      return false;
    }

    bool isDigit(String s, int idx) {
      if (passwordState.value.isNotEmpty) {
        return "0".compareTo(s[idx]) <= 0 && "9".compareTo(s[idx]) >= 0;
      }
      return false;
    }

    bool hasUppercase() {
      if (passwordState.value.isNotEmpty) {
        var i = 0;
        var character = '';
        while (i < passwordState.value.length) {
          character = passwordState.value.substring(i, i + 1);
          if (character == character.toUpperCase() &&
              !isSpecialCase(character) &&
              !isDigit(character, 0)) {
            return true;
          }
          i++;
        }
      }
      return false;
    }

    bool hasNumbericCase() {
      var i = 0;
      var character = '';
      while (i < passwordState.value.length) {
        character = passwordState.value.substring(i, i + 1);
        if (isDigit(character, 0)) {
          return true;
        }
        i++;
      }
      return false;
    }

    bool isErrorPassword() {
      return hasUppercase() == false ||
          hasNumbericCase() == false ||
          hasSpecialCase() == false ||
          hasMoreThan8Chars() == false;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          padding: const EdgeInsets.all(42),
          child: Column(children: [
            Flexible(
              flex: 5,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: FormBuilder(
                      key: _formKey,
                      onChanged: () {
                        passwordState.value =
                            _formKey.currentState?.getRawValue('password') ??
                                '';
                      },
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EHeader(
                                title: const Text(''),
                                navigateIcon: const Icon(Icons.arrow_back),
                                onPressedIcon: () {
                                  Get.back();
                                }),
                            Text(
                              'mail.reset_password.title'.tr,
                              style: const TextStyle(
                                  fontFamily: fontFamily,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 30),
                            FormInput(
                                name: "password",
                                label:
                                    "mail.reset_password.field.label.password"
                                        .tr,
                                isSecrect: true,
                                isError: passwordState.value != "" &&
                                    isErrorPassword(),
                                icon: Icons.lock_outline,
                                placeholder:
                                    "mail.reset_password.field.placeholder.password"
                                        .tr,
                                validator:
                                    ValidationBuilder().required('').build()),
                            const SizedBox(height: 14),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.done,
                                        size: 18,
                                        color: hasMoreThan8Chars() == true
                                            ? Colors.green
                                            : primaryColor),
                                    const SizedBox(width: 10),
                                    Text(
                                        'auth.register.field.validation.password1'
                                            .tr)
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.done,
                                        size: 18,
                                        color: hasSpecialCase() == true
                                            ? Colors.green
                                            : primaryColor),
                                    const SizedBox(width: 10),
                                    Text(
                                        'auth.register.field.validation.password2'
                                            .tr)
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.done,
                                        size: 18,
                                        color: hasNumbericCase() == true
                                            ? Colors.green
                                            : primaryColor),
                                    const SizedBox(width: 10),
                                    Text(
                                        'auth.register.field.validation.password3'
                                            .tr)
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.done,
                                        size: 18,
                                        color: hasUppercase() == true
                                            ? Colors.green
                                            : primaryColor),
                                    const SizedBox(width: 10),
                                    Text(
                                        'auth.register.field.validation.password4'
                                            .tr)
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            EButton(
                              label: 'common.continue'.tr,
                              variant: ButtonVariant.primary,
                              onPressed: () {
                                _formKey.currentState?.validate();
                                if (_formKey.currentState?.isValid == true) {
                                  // TODO: Integration reset password integration
                                  Get.to(const ResetPasswordSuccessScreen());
                                }
                              },
                            ),
                          ]))),
            ),
          ])),
    );
  }
}
