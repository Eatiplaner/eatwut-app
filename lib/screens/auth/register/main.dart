import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/data/repository/account_repository.dart';
import 'package:eatiplan_mobile/shared/widgets/forms/input/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_validator/form_validator.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  doSignup() {
    AccountRepository()
        .signup(AccountModel(userName: 'louishuy', password: '123456'));
  }

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register screen'),
      ),
      body: Column(
        children: [
          const Text('Register screen'),
          FormBuilder(
            key: _formKey,
            child: Column(
              children: const <Widget>[
                FormInput(
                  name: "usename",
                  label: "What’s your email?",
                  icon: Icons.account_circle_outlined,
                  placeholder: "Your email",
                  validator: ValidationBuilder().minLength(10).build(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
