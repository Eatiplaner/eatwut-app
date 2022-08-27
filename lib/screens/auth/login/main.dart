import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/data/repository/account_repository.dart';
import 'package:eatiplan_mobile/shared/variables.dart';
import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/shared/widgets/iconButton/main.dart';
import 'package:eatiplan_mobile/shared/widgets/textfield/main.dart';
import 'package:flutter/material.dart';
import 'package:ftoast/ftoast.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  String userEmailName = "";
  String password = "";
  bool isUsernameError = false;
  bool isPasswordError = false;
  bool isLoading = false;

  doLogin(context) async {
    setState(() {
      isLoading = true;
    });
    if (checkValidation() == true) {
      bool isLogin = false;
      if (userEmailName.contains("@")) {
        isLogin = await AccountRepository()
            .login(AccountModel(email: userEmailName, password: password));
      } else {
        isLogin = await AccountRepository()
            .login(AccountModel(userName: userEmailName, password: password));
      }

      if (!isLogin) {
        FToast.toast(
          context,
          color: Colors.redAccent,
          padding: const EdgeInsets.all(15),
          msg: 'Username/Email or Password incorrect',
          msgStyle: const TextStyle(color: Colors.white),
        );
      } else {
        FToast.toast(
          context,
          color: Colors.green,
          padding: const EdgeInsets.all(15),
          msg: 'Login successful',
          msgStyle: const TextStyle(color: Colors.white),
        );
        Get.toNamed('/home');
      }
    } else {
      FToast.toast(
        context,
        color: Colors.redAccent,
        padding: const EdgeInsets.all(15),
        msg: 'validate.auth.user_email_can_not_be_blank'.tr,
        msgStyle: const TextStyle(color: Colors.white),
      );
    }
    setState(() {
      isLoading = false;
    });
  }

  bool checkValidation() {
    if (userEmailName == "" || password == "") {
      if (userEmailName == "") {
        setState(() {
          isUsernameError = true;
        });
      }
      if (password == "") {
        setState(() {
          isPasswordError = true;
        });
      }
      return false;
    } else {
      return true;
    }
  }

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
                            Get.toNamed('/auth');
                          },
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'auth.login.welcomeBack'.tr,
                          style: const TextStyle(
                              fontFamily: fontFamily,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 30),
                        ETextfield(
                          value: userEmailName,
                          icon: Icons.account_circle_outlined,
                          placeholder: 'auth.login.username.placeholder'.tr,
                          isError: isUsernameError,
                          onChange: (value) {
                            setState(() {
                              isUsernameError = !value.isNotEmpty;
                              userEmailName = value;
                            });
                          },
                        ),
                        const SizedBox(height: 14),
                        ETextfield(
                          value: password,
                          isError: isPasswordError,
                          icon: Icons.lock_outline,
                          isSecret: true,
                          placeholder: 'auth.login.password.placeholder'.tr,
                          onChange: (value) {
                            setState(() {
                              isPasswordError = !value.isNotEmpty;
                              password = value;
                            });
                          },
                          textInputAction: TextInputAction.done,
                        ),
                        const SizedBox(height: 14),
                        TextButton(
                          onPressed: () {},
                          child: Text('auth.login.forgotPassword'.tr,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500)),
                        ),
                        EButton(
                          disabled: isLoading,
                          label: 'auth.login.continue'.tr,
                          variant: ButtonVariant.primary,
                          onPressed: () {
                            doLogin(context);
                          },
                        ),
                      ])),
            ),
            Flexible(
              fit: FlexFit.loose,
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
              ),
            ),
          ])),
    );
  }
}
