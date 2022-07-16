import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/data/repository/account_repository.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  doSignup() {
    AccountRepository()
        .signup(AccountModel(userName: 'louishuy', password: '123456'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register screen'),
      ),
      body: Center(
        child: Column(children: [
          const Text('Register screen'),
          TextButton(
            onPressed: doSignup,
            child: const Text('Test api'),
          ),
        ]),
      ),
    );
  }
}
