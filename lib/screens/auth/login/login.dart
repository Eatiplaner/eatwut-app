// ignore_for_file: unnecessary_new

import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/data/repository/account_repository.dart';
import 'package:flutter/material.dart';

import '../../home/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  doLogin() {
    AccountRepository()
        .login(AccountModel(userName: 'louishuy', password: '123456'));
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;
    double deviceWidth(BuildContext context) =>
        MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login screen'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(
            deviceWidth(context) * 0.1,
            deviceHeight(context) * 0.1,
            deviceWidth(context) * 0.1,
            deviceHeight(context) * 0.1),
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: deviceHeight(context) * 0.03),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 70,
                  height: 70,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const FlutterLogo(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: deviceHeight(context) * 0.02),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: Image.asset("assets/images/arrow_left.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: deviceHeight(context) * 0.02),
              child: const Text(
                "Welcome back !",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: deviceHeight(context) * 0.03),
              child: const TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                    color: Color(0xff888888),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: deviceHeight(context) * 0.03),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: const <Widget>[
                  TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Text(
                    "SHOW",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: deviceHeight(context) * 0.03),
              child: const Text("Forgot password?"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: const Size.fromHeight(50),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                ),
              ),
              onPressed: doLogin,
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
