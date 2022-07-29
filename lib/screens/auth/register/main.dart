import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/data/repository/account_repository.dart';
import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/shared/widgets/forms/input/main.dart';
import 'package:eatiplan_mobile/shared/widgets/iconButton/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';
import 'package:ftoast/ftoast.dart';
import 'package:get/get.dart';

class RegisterScreen extends HookWidget {
  RegisterScreen({super.key});
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

    doSignup(context) async {
      _formKey.currentState?.validate();
      if (_formKey.currentState?.isValid == true &&
          isErrorPassword() == false) {
        var email = _formKey.currentState?.getRawValue('email');
        var password = _formKey.currentState?.getRawValue('password');
        var fullName = _formKey.currentState?.getRawValue('fullName');
        bool isSignup = false;
        AccountModel request =
            AccountModel(email: email, password: password, fullName: fullName);
        isSignup = await AccountRepository().singup(request);
        if (isSignup) {
          FToast.toast(
            context,
            color: Colors.green,
            padding: const EdgeInsets.all(15),
            msg: 'Login successful',
            msgStyle: const TextStyle(color: Colors.white),
          );
          Get.toNamed('/home');
        } else {
          FToast.toast(
            context,
            color: Colors.redAccent,
            padding: const EdgeInsets.all(15),
            msg: 'This email has been used, please try again',
            msgStyle: const TextStyle(color: Colors.white),
          );
        }
      } else {
        debugPrint('incorrect !!');
      }
    }

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Center(
              child: Image.asset('assets/images/app-circle.png'),
            ),
          ),
          EIconButton(
            icon: const Icon(Icons.arrow_back),
            height: 40,
            width: 40,
            onPressed: () {
              Get.back();
            },
          ),
          Flexible(
              flex: 8,
              child: SingleChildScrollView(
                child: FormBuilder(
                  key: _formKey,
                  onChanged: () {
                    passwordState.value =
                        _formKey.currentState?.getRawValue('password') ?? '';
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 24),
                      Text(
                        'signup.welcome'.tr,
                        style: const TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 24),
                      FormInput(
                        name: "email",
                        label: "signup.field.label.email".tr,
                        icon: Icons.email_outlined,
                        placeholder: "signup.field.placeholder.email".tr,
                        validator: ValidationBuilder()
                            .required()
                            .email('validate.email'.tr)
                            .build(),
                      ),
                      const SizedBox(height: 24),
                      FormInput(
                        name: "password",
                        label: "signup.field.label.password".tr,
                        isSecrect: true,
                        isError: passwordState.value != "" && isErrorPassword(),
                        icon: Icons.lock_outline,
                        placeholder: "signup.field.placeholder.password".tr,
                      ),
                      const SizedBox(height: 10),
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
                              Text('singup.field.validation.password1'.tr)
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
                              Text('singup.field.validation.password2'.tr)
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
                              Text('singup.field.validation.password3'.tr)
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
                              Text('singup.field.validation.password4'.tr)
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      FormInput(
                        name: "fullName",
                        label: "signup.field.label.fullName".tr,
                        icon: Icons.account_circle_outlined,
                        placeholder: "signup.field.placeholder.fullName".tr,
                        validator: ValidationBuilder().build(),
                      ),
                      const SizedBox(height: 24),
                      EButton(
                        label: 'signup.continue'.tr,
                        variant: ButtonVariant.primary,
                        onPressed: () {
                          doSignup(context);
                        },
                      ),
                      SizedBox(
                        height: 100,
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
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(text: 'auth.bottom.text.3'.tr),
                                  TextSpan(
                                    text: 'auth.bottom.text.4'.tr,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
