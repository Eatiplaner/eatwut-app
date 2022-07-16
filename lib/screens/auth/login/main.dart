import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/data/repository/account_repository.dart';
import 'package:eatiplan_mobile/shared/widgets/iconButton/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  doLogin() {
    Future<AccountModel> response = AccountRepository().login(
        AccountModel(email: 'eatiplaner6@gmail.com', password: 'Aa@123456'));
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(42),
        child: Center(
          child: Column(children: [
            const Expanded(
              flex: 1,
              child: Center(
                child: Text('Logo',
                    style: TextStyle(
                      fontSize: 36,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: EIconButton(
                    icon: const Icon(Icons.arrow_back),
                    height: 40,
                    width: 40,
                    onPressed: () {},
                  ),
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
