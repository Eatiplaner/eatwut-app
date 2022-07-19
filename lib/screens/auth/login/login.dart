import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/data/repository/account_repository.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  doLogin() {
    AccountRepository()
        .login(AccountModel(userName: 'louishuy', password: '123456'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login screen'),
      ),
      body: Center(
        child: Column(children: [
          const Text('Register screen'),
          TextButton(
            onPressed: doLogin,
            child: const Text('Test api'),
          ),
        ]),
      ),
    );
  }
}
