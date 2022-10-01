import 'package:eatiplan_mobile/shared/widgets/button/main.dart';
import 'package:eatiplan_mobile/shared/widgets/forms/input/main.dart';
import 'package:eatiplan_mobile/shared/widgets/header/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

class ProfileScreen extends HookWidget {
  ProfileScreen({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    var emailState = useState<String>('');
    var passwordState = useState<String>('');
    var genderState = useState<String>('');
    var dobState = useState<String>('');

    return Scaffold(
        body: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: EHeader(
                    title: Text(
                      'home.setting.profile.title'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    navigateIcon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                      onPressedIcon: (){
                        Get.back();
                      },
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(65, 0, 65, 0),
                      child: Text(
                        'Provide your personal information, this won’t be part of your public profile',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Flexible(
                        flex: 8,
                        child: SingleChildScrollView(
                          child: FormBuilder(
                            key: _formKey,
                            onChanged: () {
                              passwordState.value = _formKey.currentState
                                      ?.getRawValue('password') ??
                                  '';
                              emailState.value =
                                  _formKey.currentState?.getRawValue('email') ??
                                      '';
                              genderState.value = _formKey.currentState
                                      ?.getRawValue('gender') ??
                                  '';
                              dobState.value =
                                  _formKey.currentState?.getRawValue('dob') ??
                                      '';
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const SizedBox(
                                  height: 44,
                                ),
                                FormInput(
                                  name: "email",
                                  label: "common.email".tr,
                                  icon: Icons.email_outlined,
                                  placeholder:
                                      "auth.register.field.placeholder.email"
                                          .tr,
                                  validator: ValidationBuilder()
                                      .required()
                                      .email()
                                      .build(),
                                ),
                                const SizedBox(height: 24),
                                FormInput(
                                    name: "password",
                                    label: "common.password".tr,
                                    isSecrect: true,
                                    isError: passwordState.value != "",
                                    icon: Icons.lock_outline,
                                    placeholder:
                                        "auth.register.field.placeholder.password"
                                            .tr,
                                    validator: ValidationBuilder()
                                        .required('')
                                        .build()),
                                const SizedBox(height: 24),
                                EButton(
                                  label: 'common.save'.tr,
                                  variant: ButtonVariant.primary,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ))),
              ],
            )));
  }
}
